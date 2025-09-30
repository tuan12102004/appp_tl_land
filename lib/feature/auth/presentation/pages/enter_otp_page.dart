import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EnterOtpPage extends StatefulWidget {
  final String email;
  // final void Function(BuildContext context) onCompleted;
  const EnterOtpPage({
    super.key,
    required this.email,
    // required this.onCompleted,
  });

  @override
  State<EnterOtpPage> createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {
  late final CountDownBloc _countDownBloc;
  final _otpCodeCon = TextEditingController();
  final _otpCodeNode = FocusNode();
  String? _errorText;
  @override
  void initState() {
    super.initState();
    _countDownBloc = CountDownBloc();
    _countDownBloc.add(const CountDownEvent.startCountdown(second: 59));

    // Yêu cầu focus khi trang được xây dựng
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_otpCodeNode);
    });
  }

  @override
  void dispose() {
    _countDownBloc.close();
    _otpCodeCon.dispose();
    _otpCodeNode.dispose();
    super.dispose();
  }

  void _unFocus(BuildContext context) => FocusScope.of(context).unfocus();

  void _onEnterOtp(String otpCode) {
    _unFocus(context);
    setState(() {
      _errorText = null; // Xóa lỗi cũ khi người dùng nhập lại
    });
    final otp = int.tryParse(otpCode) ?? 0;
    sl<AuthBloc>().add(AuthEvent.verificationOtp(
      email: widget.email,
      otp: otp,
    ));
  }

  void _onEnterOtpListener(BuildContext context, AuthState state) async {
    if (state.actionType == AuthActionType.verifyOtp) {
      if (state.otpVerified == true) {
        if (context.mounted) {
          context.replace('/auth/reset-pass', extra: widget.email);
        }
        sl<AuthBloc>().add(const AuthEvent.resetState());
      } else if (state.failure != null) {
        if (context.mounted) {
          setState(() {
            _errorText = 'Mã chưa chính xác, xin vui lòng thử lại!';
          });
          _otpCodeCon.clear();
          // _countDownBloc.add(const CountDownEvent.cancelCountdown());
          _otpCodeNode.requestFocus();
        }
        sl<AuthBloc>().add(const AuthEvent.resetState());
      }
    } else if (state.actionType == AuthActionType.resendOtp) {
      if (state.otpResent == true) {
        if (context.mounted) {
          setState(() {
            _errorText = null;
          });
          sl<CountDownBloc>().add(CountDownEvent.cancelCountdown());
          _countDownBloc.add(const CountDownEvent.startCountdown(second: 59));
          _otpCodeNode.requestFocus();
        }
        sl<AuthBloc>().add(const AuthEvent.resetState());
      } else if (state.failure != null) {
        if (context.mounted) {
          DisplayError.handle(
            context: context,
            errerrType: state.failure!.type,
            apiMessage: state.failure!.err,
          );
        }
        sl<AuthBloc>().add(const AuthEvent.resetState());
      }
    }
  }

  void _resendOtp() {
    sl<AuthBloc>().add(AuthEvent.resendOtp(email: widget.email));
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (!didPop) {
            showAppDialog(
              context,
              title: 'Xác nhận thoát',
              content:
                  'Bạn có chắc chắn muốn hủy quá trình đặt lại mật khẩu và quay lại không?',
              type: DialogType.okCancel,
              onConfirm: () {
                context.pop();
              },
            );
          }
        },
        child: Scaffold(
          appBar: CustomAuthAppbar(),
          body: BlocConsumer<AuthBloc, AuthState>(
            bloc: sl<AuthBloc>(),
            listener: _onEnterOtpListener,
            buildWhen: (previous, current) =>
                previous.isLoading != current.isLoading,
            builder: (context, state) {
              return SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                  child: Column(
                    children: [
                      Text(
                        'Nhập mã xác thực',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Một mã xác thực đã được gửi đến email ${formatHiddenEmail(widget.email)}, vui lòng kiểm tra tin nhắn của bạn. ',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 16.h),
                      EnterOtpForm(
                        controller: _otpCodeCon,
                        focusNode: _otpCodeNode,
                        errorText: _errorText,
                        onCompleted: (otpCode) => _onEnterOtp(otpCode),
                      ),
                      SizedBox(height: 24.h),
                      BlocBuilder<CountDownBloc, CountDownState>(
                        bloc: _countDownBloc,
                        builder: (context, countDownState) {
                          return countDownState.maybeWhen(
                            remainingTime: (time, isActive) {
                              if (isActive) {
                                return RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: 'Bạn có thể yêu cầu gửi lại sau ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              color: TextColors
                                                  .textDefaultSecondary),
                                    ),
                                    TextSpan(
                                      text: '00:$time',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color:
                                                  TextColors.textBrandPrimary,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ]),
                                );
                              } else {
                                return CustomAdaptiveButton(
                                  width: double.infinity,
                                  onPressed:
                                      state.isLoading ? () {} : _resendOtp,
                                  text: 'Gửi lại mã mới',
                                  backgroundColor: state.isLoading
                                      ? BackgroundColors
                                          .backgroundButtonDisabled
                                      : BackgroundColors
                                          .backgroundButtonPrimary,
                                );
                              }
                            },
                            orElse: () => const SizedBox.shrink(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
