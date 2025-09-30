import 'dart:async';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  Timer? _tokenTimer;
  Duration tokenLifespan = Duration(days: 30);

  final LoginUsecase _loginUsecase;
  final SignupUsecase _signupUsecase;
  final ForgotPassUsecase _forgotPassUsecase;
  final LogoutUsecase _logoutUsecase;
  final ProfileUsecase _profileUsecase;
  final SendOtpUsecase _sendOtpUsecase;
  final ResendOtpUsecase _resendOtpUsecase;
  final VerificationOtpUsecase _verificationOtpUsecase;

  AuthBloc({
    required LoginUsecase login,
    required SignupUsecase signup,
    required ForgotPassUsecase forgotPass,
    required LogoutUsecase logout,
    required ProfileUsecase profile,
    required SendOtpUsecase sendOtp,
    required ResendOtpUsecase resendOtp,
    required VerificationOtpUsecase verificationOtp,
  })  : _loginUsecase = login,
        _signupUsecase = signup,
        _forgotPassUsecase = forgotPass,
        _logoutUsecase = logout,
        _profileUsecase = profile,
        _sendOtpUsecase = sendOtp,
        _resendOtpUsecase = resendOtp,
        _verificationOtpUsecase = verificationOtp,
        super(const AuthState()) {
    on<_Login>(_onLogin);
    on<_Signup>(_onSignup);
    on<_ForgotPass>(_onForgotPass);
    on<_Logout>(_onLogout);
    on<_CheckAuth>(_onCheckAuth);
    on<_ResetState>(_onResetState);
    on<_SendOtp>(_onSendOtp);
    on<_ResendOtp>(_onResendOtp);
    on<_VerificationOtp>(_onVerificationOtp);
    on<_TokenExpired>(_onTokenExpired);
  }

  // Token Expried
  FutureOr<void> _onTokenExpired(_TokenExpired event, Emitter<AuthState> emit) {
    final newState = state.copyWith(
      isAuthenticated: false,
      failure: Failure(
        err: 'Phiên đăng nhập đã hết hạn.',
        type: ServerExceptionType.expiredToken,
        timestamp: DateTime.now().millisecondsSinceEpoch,
      ),
    );
    print('📣 Emit token expired state: $newState');
    emit(newState);
  }

  // Bắt đầu đếm ngược
  void _startTokenMonitor() {
    print('▶️ Bắt đầu theo dõi token...');
    _tokenTimer = Timer.periodic(Duration(seconds: 3), (timer) async {
      final issuedAt =
          sl<SharedPrefsService>().getInt(SharedPrefsKey.tokenIssuedAt);
      if (issuedAt == null) {
        return;
      }
      final now = DateTime.now().millisecondsSinceEpoch;
      final isExpired = now - issuedAt > tokenLifespan.inMilliseconds;
      if (isExpired && !isClosed) {
        print('⏰ Token hết hạn → Gửi event');
        Future.microtask(() {
          add(const AuthEvent.tokenExpired());
        });
        timer.cancel();
      }
    });
  }

  // Hủy đếm
  void _cancelTokenMonitor() {
    _tokenTimer?.cancel();
    _tokenTimer = null;
  }

  Future<void> clearAuthSession() async {
    final prefs = sl<SharedPrefsService>();
    prefs.clearLocalData();
  }

  //Login
  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
      actionType: AuthActionType.login,
    ));

    final res = await _loginUsecase.call(LoginParams(
      email: event.email,
      pass: event.pass,
    ));

    await res.fold(
      (failure) async {
        emit(state.copyWith(
            isLoading: false,
            failure: failure,
            actionType: AuthActionType.login));
      },
      (accessToken) async {
        print('✅ Login thành công');
        await sl<SharedPrefsService>()
            .saveString(SharedPrefsKey.accessToken, accessToken);
        await sl<SharedPrefsService>()
            .saveBool(SharedPrefsKey.isLoggedIn, true);

        final result = await _profileUsecase.call(NoParam());
        await result.fold(
          (failure) async {
            emit(state.copyWith(
                isLoading: false,
                isAuthenticated: false,
                failure: failure,
                actionType: AuthActionType.login));
          },
          (user) async {
            await sl<SharedPrefsService>()
                .saveUserEntity(SharedPrefsKey.user, user);
            emit(state.copyWith(
                isLoading: false,
                isSuccess: true,
                isAuthenticated: true,
                userModel: user,
                actionType: AuthActionType.login));
            // Lưu thời điểm có token để lấy mốc
            await sl<SharedPrefsService>().saveInt(
              SharedPrefsKey.tokenIssuedAt,
              DateTime.now().millisecondsSinceEpoch,
            );
            print(
                '📌 Token được cấp lúc: ${DateTime.now().millisecondsSinceEpoch}');
            _startTokenMonitor();
          },
        );
      },
    );
  }

  // Check login
  Future<void> _onCheckAuth(_CheckAuth event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));
    final isLoggedIn =
        sl<SharedPrefsService>().getBool(SharedPrefsKey.isLoggedIn) ?? false;

    final accessToken =
        sl<SharedPrefsService>().getString(SharedPrefsKey.accessToken);

    // final userJson = sl<SharedPrefsService>().getJson(SharedPrefsKey.user);

    final userEntity =
        sl<SharedPrefsService>().getUserEntity(SharedPrefsKey.user);

    final issuedAt =
        sl<SharedPrefsService>().getInt(SharedPrefsKey.tokenIssuedAt);

    final now = DateTime.now().millisecondsSinceEpoch;

    final isExpired =
        issuedAt != null && (now - issuedAt > tokenLifespan.inMilliseconds);

    final alreadyAuthenticated = isLoggedIn &&
        accessToken != null &&
        accessToken.isNotEmpty &&
        userEntity != null;
    print('📌 Check auth: $isLoggedIn, $accessToken, ${userEntity?.status}');

    // Token còn hạn
    // Đọc từ local trước
    if (alreadyAuthenticated && !isExpired) {
      emit(state.copyWith(
        isAuthenticated: true,
        userModel: userEntity,
        isLoading: false,
      ));
      // Đọc api sau
      final result = await _profileUsecase.call(NoParam());
      result.fold(
          (failure) => emit(state.copyWith(
                isLoading: false,
                failure: failure,
              )), (updatedUser) {
        (updatedUser) {
          sl<SharedPrefsService>()
              .saveUserEntity(SharedPrefsKey.user, updatedUser);
          emit(state.copyWith(
              isLoading: false,
              isSuccess: true,
              isAuthenticated: true,
              userModel: updatedUser));
        };
      });
    } else if (isExpired) {
      // Token hết hạn
      emit(state.copyWith(
          isAuthenticated: false,
          failure: Failure(
              err: 'Phiên đăng nhập đã hết hạn',
              type: ServerExceptionType.expiredToken)));
    } else {
      emit(state.copyWith(
          isLoading: false, isAuthenticated: false, isSuccess: false));
    }
  }

  // Signup
  void _onSignup(_Signup event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _signupUsecase.call(NoParam());
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (signup) =>
          emit(state.copyWith(isLoading: false, contactToSignup: signup)),
    );
  }

  Future<void> _onResetState(_ResetState event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        failure: null,
        actionType: AuthActionType.none,
        userModel: null));
  }

  // forgot password
  Future<void> _onForgotPass(_ForgotPass event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
      isSuccess: false,
      actionType: AuthActionType.resetPass,
    ));
    // Gọi usecase update pass
    final res = await _forgotPassUsecase.call(ForgotPassParams(
        email: event.email, pass: event.pass, confirmPass: event.confirmPass));
    //Xử lý kết quả Either
    res.fold(
        // Lỗi
        (failure) {
      emit(state.copyWith(
        failure: failure,
        isLoading: false,
        actionType: AuthActionType.resetPass,
      ));
    },
        // Thành công
        (_) {
      print('✅ Update thành công');
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        isAuthenticated: true,
        actionType: AuthActionType.resetPass,
      ));
    });
  }

  Future<void> _onSendOtp(_SendOtp event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
      otpSend: false,
      actionType: AuthActionType.sendOtp,
    ));
    // gọi api
    final res =
        await _sendOtpUsecase.call(SendOtpParams(email: event.email));
    res.fold(
        (failure) => emit(state.copyWith(
              failure: failure,
              isLoading: false,
              actionType: AuthActionType.sendOtp,
            )), (_) async {
      emit(state.copyWith(
        isLoading: false,
        otpSend: true,
        actionType: AuthActionType.sendOtp,
      ));
    });
  }

  Future<void> _onResendOtp(_ResendOtp event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
      // isSuccess: false,
      otpResent: false,
      actionType: AuthActionType.resendOtp,
    ));
    // gọi api
    final res =
        await _resendOtpUsecase.call(ResendOtpParams(email: event.email));
    res.fold(
        (failure) => emit(state.copyWith(
              failure: failure,
              isLoading: false,
              actionType: AuthActionType.resendOtp,
            )), (_) async {
      emit(state.copyWith(
        isLoading: false,
        // isSuccess: true,
        otpResent: true,
        actionType: AuthActionType.resendOtp,
      ));
    });
  }

  Future<void> _onVerificationOtp(
      _VerificationOtp event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      failure: null,
      // isSuccess: false,
      otpVerified: false,
      actionType: AuthActionType.verifyOtp,
    ));
    // gọi api
    final res = await _verificationOtpUsecase
        .call(VerificationOtpParams(email: event.email, otp: event.otp));
    res.fold(
        (failure) => emit(state.copyWith(
              failure: failure,
              isLoading: false,
            )), (_) {
      print('✅ OTP VERIFIED');
      emit(state.copyWith(
        isLoading: false,
        // isSuccess: true,
        otpVerified: true,
        actionType: AuthActionType.verifyOtp,
      ));
    });
  }

  // Logout
  Future<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));
    // Gọi usecase logout
    final res = await _logoutUsecase.call(NoParam());
    // Xứ lí kết quả Either
    res.fold(
        // Lỗi
        (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
        // Thành công
        (_) {
      print('✅ Logout thành công');
      // Xóa authsession
      clearAuthSession();
      // Hủy bộ đếm
      _cancelTokenMonitor();
      emit(state.copyWith(
          isLoading: false, isSuccess: true, isAuthenticated: false));
    });
  }
}
