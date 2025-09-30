import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResetPassPage extends StatefulWidget {
  final String email;
  const ResetPassPage({super.key, required this.email});

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  final _formKey = GlobalKey<FormState>();

  final _passCon = TextEditingController();
  final _confirmPassCon = TextEditingController();

  final _passNode = FocusNode();
  final _confirmPassNode = FocusNode();

  void _onConfirmPass() {
    if (_formKey.currentState?.validate() == true) {
      FocusScope.of(context).unfocus();
      final pass = _passCon.text.trim();
      final confirmPass = _confirmPassCon.text.trim();
      sl<AuthBloc>().add(AuthEvent.forgotPass(
          email: widget.email, pass: pass, confirmPass: confirmPass));
    }
  }

  Future<void> _onResetPassListener(BuildContext context, state) async {
    if (state.actionType != AuthActionType.resetPass) return;

    if (state.isLoading) {
      showAppLoading(
        context,
        riveAnimationPath: AppRiveAnimations.multiLoadingState,
        onInit: sl<MultiLoadingStateService>().init,
      );
      return;
    }
    _popAnimation(context);

    if (state.isSuccess) {
      sl<MultiLoadingStateService>().fireCheck();
      await Future.delayed(const Duration(seconds: 2));
      showAppSnackbar(context, content: "Cập nhật mật khẩu thành công!");

      if (context.mounted) {
        context.go('/auth/login');
      }
      // Reset lại state
      sl<AuthBloc>().add(AuthEvent.resetState());
    } else if (state.failure != null) {
      sl<MultiLoadingStateService>().fireError();
      await Future.delayed(const Duration(seconds: 2));
      if (context.mounted) {
        DisplayError.handle(
            context: context,
            errerrType: state.failure!.type,
            apiMessage: state.failure!.err);
      }
    }
  }

  // Tự động đóng sau 2s
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
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (!didPop) {
            showAppDialog(
              context,
              title: 'Xác nhận thoát',
              content:
                  'Các thay đổi của bạn sẽ không được lưu. Bạn có chắc chắn muốn thoát?',
              type: DialogType.okCancel,
              onConfirm: () {
                context.pop();
              },
            );
          }
        },
        child: Scaffold(
            appBar: CustomAuthAppbar(),
            body: BlocListener<AuthBloc, AuthState>(
              bloc: sl<AuthBloc>(),
              listener: _onResetPassListener,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Cập nhật mật khẩu mới',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    ResetPassForm(
                      formKey: _formKey,
                      passCon: _passCon,
                      confirmPassCon: _confirmPassCon,
                      passNode: _passNode,
                      confirmPassNode: _confirmPassNode,
                      onPressed: _onConfirmPass,
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
