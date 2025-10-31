import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  void _unFocus(BuildContext context) => FocusScope.of(context).unfocus();

  void _onRegister() {
    _unFocus(context);
    context.push('/auth/signup');
  }

  void _onForgot() {
    _unFocus(context);
    context.push('/auth/forgot-pass');
  }

  void _onLoginListener(BuildContext context, AuthState state) async {
    if (state.actionType != AuthActionType.login) {
      return;
    }

    if (state.isLoading) {
      if (context.mounted) {
        showAppLoading(
          context,
          riveAnimationPath: AppRiveAnimations.multiLoadingState,
          onInit: sl<MultiLoadingStateService>().init,
        );
      }
    } else if (state.isSuccess && state.actionType == AuthActionType.login) {
      sl<MultiLoadingStateService>().fireCheck();
      await _popAnimation(context);
      if (context.mounted) {
        context.go('/');
        // Reset lại state
        sl<AuthBloc>().add(AuthEvent.resetState());
      }
    } else if (state.failure != null) {
      print("✅✅✅✅ LỖI ${state.failure!.err}");
      sl<MultiLoadingStateService>().fireError();
      await _popAnimation(context);
      if (context.mounted && state.failure?.type != null) {
        DisplayError.handle(
            context: context,
            errerrType: state.failure!.type,
            apiMessage: state.failure!.err);
      }
    }
  }

  void _onLogin() {
    if (_formKey.currentState?.validate() == true) {
      _unFocus(context);
      final email = _usernameCon.text.trim().replaceAll(" ", "");
      // final email = _usernameCon.text.trim();
      final pass = _passwordCon.text.trim();

      sl<AuthBloc>().add(
        AuthEvent.login(
          email: email,
          pass: pass,
        ),
      );
    }
  }

  Future<void> _popAnimation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      child: UnfocusWidget(
        child: BackgroundWidget(
          appBar: null,
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
                    child: BlocListener<AuthBloc, AuthState>(
                      bloc: sl<AuthBloc>(),
                      listener: _onLoginListener,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(8.w, 16.h, 8.w, 24.h),
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
                                SizedBox(height: 10.h),
                                Text(
                                  'Đăng nhập để có trải nghiệm tốt nhất',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontSize: 20.sp,
                                          color: TextColors
                                              .textDefaultSecondary),
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
                            onLogin: _onLogin,
                            onForgotThePass: _onForgot,
                          ),
                          const Spacer(),
                          AuthEndText(
                            onPressed: _onRegister,
                            firstText: 'Không có tài khoản? ',
                            secondText: 'Đăng kí',
                          ),
                        ],
                      ),
                    ),
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
