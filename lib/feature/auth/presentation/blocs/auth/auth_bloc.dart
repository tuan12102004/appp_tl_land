// import 'dart:async';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:atlas_2949/common/enums/auth_acction_type.dart';
// import 'package:atlas_2949/common/enums/server_exception_type.dart';
// import 'package:atlas_2949/common/enums/shared_prefs_key.dart';
// import 'package:atlas_2949/core/di/service_locator.dart';
// import 'package:atlas_2949/core/errors/failure.dart';
// import 'package:atlas_2949/core/services/shared_prefs_service.dart'

// part 'auth_event.dart';
// part 'auth_state.dart';
// part 'auth_bloc.freezed.dart';


// class AuthBloc extends Bloc<AuthEvent, AuthState>{
//   Timer? _tokenTimer;
//   Duration tokenLifespan = Duration(days: 30);

//   final LoginUsecase _loginUsecase;
//   final SignupUsecase _signupUsecase;
//   final UpdatePassUsecase _updatePassUsecase;
//   final LogoutUsecase _logoutUsecase;
//   final ProfileUsecase _profileUsecase;
//   final ResendOtpUsecase _resendOtpUsecase;
//   final VerificationOtpUsecase _verificationOtpUsecase;

//   AuthBloc({
//     required LoginUsecase login, 
//     required SignupUsecase signup, 
//     required UpdatePassUsecase updatePass,
//     required LogoutUsecase logout,
//     required ProfileUsecase profile,
//     required ResendOtpUsecase resendOtp,
//     required VerificationOtpUsecase verificationOtp,
//     }) 
//     : _loginUsecase = login, 
//       _signupUsecase = signup, 
//       _updatePassUsecase = updatePass,
//       _logoutUsecase = logout,
//       _profileUsecase = profile,
//       _resendOtpUsecase = resendOtp,
//       _verificationOtpUsecase = verificationOtp,

//       super(const AuthState()){
//         on<_Login>(_onLogin);
//         on<_Signup>(_onSignup);
//         on<_UpdatePass>(_onUpdatePass);
//         on<_Logout>(_onLogout);
//         on<_CheckAuth>(_onCheckAuth);
//         on<_ResetState>(_onResetState);
//         on<_ResendOtp>(_onResendOtp);
//         on<_VerificationOtp>(_onVerificationOtp);
//         on<_TokenExpired>(_onTokenExpired);
//       }

//   // Token Expried
//   FutureOr<void> _onTokenExpired(_TokenExpired event, Emitter<AuthState> emit) {
//     final newState = state.copyWith(
//       isAuthenticated: false,
//       failure: Failure(
//         err: 'Phiên đăng nhập đã hết hạn.',
//         type: ServerExceptionType.expiredToken,
//         timestamp: DateTime.now().millisecondsSinceEpoch,
//       ),
//     );
//     print('📣 Emit token expired state: $newState');
//     emit(newState);
//   }

//   // Bắt đầu đếm ngược
//   void _startTokenMonitor() {
//     print('▶️ Bắt đầu theo dõi token...');
//     _tokenTimer = Timer.periodic(Duration(seconds: 3), (timer) async {
//       final issuedAt = sl<SharedPrefsService>().getInt(SharedPrefsKey.tokenIssuedAt);
//       if (issuedAt == null) {
//         return;
//       }
//       final now = DateTime.now().millisecondsSinceEpoch;
//       final isExpired = now - issuedAt > tokenLifespan.inMilliseconds;
//       if (isExpired && !isClosed) {
//         print('⏰ Token hết hạn → Gửi event');
//         Future.microtask(() {
//           add(const AuthEvent.tokenExpired());
//         });
//         timer.cancel();
//       }
//     });
//   }

//   // Hủy đếm
//   void _cancelTokenMonitor() {
//     _tokenTimer?.cancel();
//     _tokenTimer = null;
//   }

//   Future<void> clearAuthSession() async {
//     final prefs = sl<SharedPrefsService>();
//     prefs.clearLocalData();
//   }

//   //Login
//   Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
//     emit(state.copyWith(
//       isLoading: true, 
//       failure: null,
//       actionType: AuthActionType.login,
//       )
//     );
//     final res = await _loginUsecase.call(LoginParams(
//       phone: event.phone,
//       pass: event.pass,
//     ));
//     await res.fold(
//       (failure) async {
//         emit(state.copyWith(isLoading: false, failure: failure));
//       },
//       (accessToken) async {
//         print('✅ Login thành công');
//         await sl<SharedPrefsService>().saveString(SharedPrefsKey.accessToken, accessToken);
//         await sl<SharedPrefsService>().saveBool(SharedPrefsKey.isLoggedIn, true);

//         final result = await _profileUsecase.call(ProfileParams());
//         await result.fold(
//           (failure) async {
//             emit(state.copyWith(isLoading: false, isAuthenticated: false, failure: failure));
//           },
//           (user) async {
//             await sl<SharedPrefsService>().saveJson(SharedPrefsKey.user, user.toJson());
//             emit(state.copyWith(
//               isLoading: false,
//               isSuccess: true,
//               isAuthenticated: true,
//               userModel: user,
//               actionType: AuthActionType.login
//             ));
//             // Lưu thời điểm có token để lấy mốc
//             await sl<SharedPrefsService>().saveInt(
//               SharedPrefsKey.tokenIssuedAt,
//               DateTime.now().millisecondsSinceEpoch,
//             );
//             print('📌 Token được cấp lúc: ${DateTime.now().millisecondsSinceEpoch}');
//             _startTokenMonitor();
//           },
//         );
//       },
//     );
//   }

//   // Signup
//   Future<void> _onSignup(_Signup event, Emitter<AuthState> emit) async{
//     emit(state.copyWith(isLoading: true, failure: null));
//     final res = await _signupUsecase.call(
//       SignupParams(
//         phone: event.phone, 
//         email: event.email, 
//         pass: event.pass, 
//         passConfirm: event.passConfirm, 
//         fullname: event.fullname, 
//         birthday: event.birthday)
//     );
//     res.fold(
//       (failure) => emit(state.copyWith(isLoading: false ,failure: failure)), 
//       (_){
//         print('✅ Signup thành công');
//           emit(state.copyWith(
//           isLoading: false ,
//           isSuccess: true, 
//           ));
//       }
//     );
//   }

//   // Update password
//   Future<void> _onUpdatePass(_UpdatePass event, Emitter<AuthState> emit) async{
//     emit(state.copyWith(isLoading: true, failure: null));
//     // Gọi usecase update pass
//     final res = await _updatePassUsecase.call(
//       UpdatePassParams(
//         phone: event.phone,
//         pass: event.pass, 
//         confirmPass: event.confirmPass
//       )
//     );
//     //Xử lý kết quả Either
//     res.fold(
//       // Lỗi
//       (failure) {
//         emit(state.copyWith(failure: failure, isLoading: false));
//       },
//       // Thành công 
//       (_) { 
//         print('✅ Update thành công');
//         emit(state.copyWith(
//           isLoading: false, 
//           isSuccess: true,
//           isAuthenticated: true,
//         ));
//       }
//     );
//   }

//   // Logout
//   Future<void> _onLogout(_Logout event, Emitter<AuthState> emit) async{
//     emit(state.copyWith(isLoading: true, failure: null));
//     // Gọi usecase logout
//     final res = await _logoutUsecase.call(
//       LogoutParams()
//     );
//     // Xứ lí kết quả Either
//     res.fold(
//       // Lỗi
//       (failure) => emit(state.copyWith(isLoading: false ,failure: failure)), 
//       // Thành công
//       (_) {
//         print('✅ Logout thành công');
//         // Xóa authsession
//         clearAuthSession();
//         // Hủy bộ đếm
//         _cancelTokenMonitor();
//         emit(state.copyWith(
//           isLoading: false,
//           isSuccess: true, 
//           isAuthenticated: false
//         ));
//       }
//     );
//   }

//   // Check login
//   Future<void> _onCheckAuth(_CheckAuth event, Emitter<AuthState> emit) async{
//     emit(state.copyWith(isLoading: true));
//     final isLoggedIn = sl<SharedPrefsService>().getBool(SharedPrefsKey.isLoggedIn) ?? false;
//     final accessTonken = sl<SharedPrefsService>().getString(SharedPrefsKey.accessToken);
//     final userJson = sl<SharedPrefsService>().getJson(SharedPrefsKey.user);
//     final issuedAt  = sl<SharedPrefsService>().getInt(SharedPrefsKey.tokenIssuedAt);
//     final now = DateTime.now().millisecondsSinceEpoch;

//     final isExpired = issuedAt != null && (now - issuedAt > tokenLifespan.inMilliseconds);
//     if(isLoggedIn && accessTonken != null && accessTonken.isNotEmpty && userJson != null && !isExpired){
//       // Token còn hạn
//       // Đọc từ local trước
//       final user = UserModel.fromJson(userJson);
//       emit(state.copyWith(
//         isAuthenticated: true,
//         userModel: user,
//         isLoading: false,
//       ));
//       _startTokenMonitor();
//       // Đọc api sau
//       final result = await _profileUsecase.call(ProfileParams());
//       result.fold( 
//         (failure) => emit(state.copyWith(
//           isLoading: false,
//           failure: failure,
//         )), 
//         (updatedUser) { 
//           if(updatedUser != user) {
//             sl<SharedPrefsService>().saveJson(SharedPrefsKey.user, updatedUser.toJson());
//             emit(state.copyWith(
//             isLoading: false,
//             isAuthenticated: true,
//             userModel: updatedUser
//             ));
//           }
//         }
//       );
//     } else if(isExpired){
//       // Token hết hạn
//       emit(state.copyWith(
//         isAuthenticated: false,
//         failure: Failure(
//           err: 'Phiên đăng nhập đã hết hạn',
//           type: ServerExceptionType.expiredToken
//         )
//       ));
//     } else{
//       emit(state.copyWith(isLoading: false ,isAuthenticated: false));
//     }
//   }

//   Future<void> _onResetState(_ResetState event, Emitter<AuthState> emit) async {
//     emit(state.copyWith(
//       isLoading: false,
//       isSuccess: false,
//       failure: null
//     ));
//   }

//   Future<void> _onResendOtp(_ResendOtp event, Emitter<AuthState> emit) async {
//     emit(state.copyWith(
//       isLoading: true, 
//       failure: null,
//       isSuccess: false,
//       actionType: AuthActionType.resendOtp,
//     ));
//     // gọi api
//     final res = await _resendOtpUsecase.call(
//       ResendOtpParams(email: event.email)
//     );
//     res.fold(
//      (failure) => emit(state.copyWith(
//         failure: failure,
//         isLoading: false,
//         actionType: AuthActionType.resendOtp,
//       )),
//      (_) async {
//         emit(state.copyWith(
//           isLoading: false, 
//           isSuccess: true,
//           actionType: AuthActionType.resendOtp,
//         ));
//       }
//     );
//   }

//   Future<void> _onVerificationOtp(_VerificationOtp event, Emitter<AuthState> emit) async {
//     emit(state.copyWith(
//       isLoading: true, 
//       failure: null,
//       actionType: AuthActionType.verifyOtp,
//     ));
//     // gọi api
//     final res = await _verificationOtpUsecase.call(
//       VerificationOtpParams(
//         email: event.email, 
//         otp: event.otp
//       )
//     );
//     res.fold(
//       (failure) => emit(state.copyWith(
//           failure: failure,
//           isLoading: false,
//         )), 
//       (_) {
//         print('✅ OTP VERIFIED');
//         emit(state.copyWith(
//           isLoading: false, 
//           isSuccess: true,
//           actionType: AuthActionType.verifyOtp,
//         ));
//       } 
//     );
//   }
// }