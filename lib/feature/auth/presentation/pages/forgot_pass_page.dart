import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassPage extends StatefulWidget {
  // final void Function(BuildContext context, String emai) onContinue;

  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCon = TextEditingController();
  final _emailNode = FocusNode();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _emailCon.dispose();
    _emailNode.dispose();
    super.dispose();
  }

  // Unfocus
  void _unFocus(BuildContext context) => FocusScope.of(context).unfocus();

  void _onEnterEmail() {
    if (_formKey.currentState?.validate() == true) {
      _unFocus(context);
      sl<AuthBloc>().add(AuthEvent.sendOtp(email: _emailCon.text.trim()));
    }
  }

  void _onEnterEmailListener(BuildContext context, AuthState state) async {
    final email = _emailCon.text.trim();
    if (state.actionType != AuthActionType.sendOtp) return;

    if (state.isLoading) {
      showAppLoading(
        context,
        riveAnimationPath: AppRiveAnimations.multiLoadingState,
        onInit: sl<MultiLoadingStateService>().init,
      );
      return;
    }

    // Đảm bảo dialog loading được đóng, bất kể thành công hay thất bại
    _popAnimation(context);

    if (state.otpSend == true) {
      sl<MultiLoadingStateService>().fireCheck();
      await Future.delayed(const Duration(seconds: 2));
      if (context.mounted) {
        context.push(
          '/auth/enter-otp',
          extra: email,
        );
      }
      sl<AuthBloc>().add(const AuthEvent.resetState());
    } else if (state.failure != null) {
      sl<MultiLoadingStateService>().fireError();
      await Future.delayed(const Duration(seconds: 2));
      if (context.mounted) {
        DisplayError.handle(
            context: context,
            errerrType: state.failure!.type,
            apiMessage: state.failure!.err);
      }
      sl<AuthBloc>().add(const AuthEvent.resetState());
    }
  }

  Future<void> _popAnimation(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2), () {
      if (context.mounted) {
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Scaffold(
        appBar: CustomAuthAppbar(),
        body: BlocListener<AuthBloc, AuthState>(
          bloc: sl<AuthBloc>(),
          listener: _onEnterEmailListener,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 64.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 24.h),
                  child: Column(
                    children: [
                      Text(
                        'Quên mật khẩu',
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
                        'Cung cấp email đã đăng ký để lấy lại mật khẩu của bạn',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 20.sp,
                            color: TextColors.textDefaultSecondary),
                      )
                    ],
                  ),
                ),
                ForgotPassForm(
                  formKey: _formKey,
                  emailNode: _emailNode,
                  emailCon: _emailCon,
                  onEnterEmail: _onEnterEmail,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
