import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/widgets/login/login_form.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/widgets/login/auth_end_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameCon = TextEditingController();
  final _passwordCon = TextEditingController();

  final _usernameNode = FocusNode();
  final _passwordNode = FocusNode();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _usernameCon.dispose();
    _passwordCon.dispose();
    _usernameNode.dispose();
    _passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          SystemNavigator.pop();
        }
      },
      child: UnfocusWidget(
        child: BackgroundWidget(
          appBar: null,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: deviceHeight <= 670
                      ? const AlwaysScrollableScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8.w, 16.h, 8.w, 24.h),
                            child: Column(
                              children: [
                                Text(
                                  'Đăng nhập',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  'Đăng nhập để có trải nghiệm tốt nhất',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontSize: 20.sp,
                                          color:
                                              TextColors.textDefaultSecondary),
                                )
                              ],
                            ),
                          ),
                          LoginForm(
                            formKey: _formKey,
                            usernameCon: _usernameCon,
                            usernameNode: _usernameNode,
                            passwordNode: _passwordNode,
                            passwordCon: _passwordCon,
                            onLogin: () {
                              // TODO
                              context.pushReplacement('/');
                            },
                            onFogotThePass: () => _onForgot(context),
                          ),
                          // BlocConsumer<AuthBloc, AuthState>(
                          //   bloc: sl<AuthBloc>(),
                          //   listener: _onLoginListener,
                          //   builder: (context, state) => CustomAdaptiveButton(
                          //     width: double.infinity,
                          //     onPressed: () => _onLogin(context),
                          //     text: 'Đăng nhập',
                          //   ),
                          // ),
                          Spacer(),
                          AuthEndText(
                            onPressed: () => _onRegister(context),
                            firstText: 'Không có tài khoản? ',
                            secondText: 'Đăng kí',
                          ),
                          SizedBox(
                            height: 24.h,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // Register
  void _onRegister(BuildContext context) {
    _unFocus(context);
    context.push('/auth/signup');
  }

  // Forgot the pass
  void _onForgot(BuildContext context) {
    _unFocus(context);
    context.push('/auth/forgot-pass');
  }

  // Unfocus
  void _unFocus(BuildContext context) => FocusScope.of(context).unfocus();

  // // Login
  // void _onLoginListener(BuildContext context, AuthState state) async {
  //   if (state.isLoading) {
  //     if (context.mounted) {
  //       showAppLoading(
  //         context,
  //         riveAnimationPath: AppRiveAnimations.multiLoadingState,
  //         onInit: sl<MultiLoadingStateService>().init,
  //       );
  //     }
  //   } else if (state.isSuccess && state.actionType == AuthActionType.login) {
  //     sl<MultiLoadingStateService>().fireCheck();
  //     await _popAnimation(context);
  //     if (context.mounted) {
  //       context.go('/');
  //       // Reset lại state
  //       sl<AuthBloc>().add(AuthEvent.resetState());
  //     }
  //   } else if (state.failure != null) {
  //     print("✅✅ pass ${state.failure!.err}");
  //     sl<MultiLoadingStateService>().fireError();
  //     await _popAnimation(context);
  //     if (context.mounted && state.failure?.type != null) {
  //       DisplayError.handle(
  //         context: context,
  //         errerrType: state.failure!.type,
  //         apiMessage: state.failure!.err,
  //       );
  //     }
  //   }
  // }

  // void _onLogin(BuildContext context) {
  //   if (_formKey.currentState?.validate() == true) {
  //     print(
  //       "✅✅ phone ${FormatterService.phoneFormatter.unmaskText(_phoneCon.text.trim())}",
  //     );
  //     print("✅✅ pass ${_passCon.text.trim()}");
  //     _unFocus(context);
  //     sl<AuthBloc>().add(
  //       AuthEvent.login(
  //         phone: FormatterService.phoneFormatter.unmaskText(
  //           _phoneCon.text.trim(),
  //         ),
  //         pass: _passCon.text.trim(),
  //       ),
  //     );
  //   }
  // }

  // // Tự động đóng sau 2s
  // Future<void> _popAnimation(BuildContext context) async {
  //   await Future.delayed(Duration(seconds: 2), () {
  //     if (context.mounted) {
  //       context.pop();
  //     }
  //   });
  // }
}
