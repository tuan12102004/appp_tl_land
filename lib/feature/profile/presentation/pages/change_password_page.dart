import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/change_info/change_pass_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _oldPasswordNode = FocusNode();
  final _newPasswordNode = FocusNode();
  final _confirmPasswordNode = FocusNode();

  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final ChangePasswordBloc _bloc = sl<ChangePasswordBloc>();

  @override
  void dispose() {
    _oldPasswordNode.dispose();
    _newPasswordNode.dispose();
    _confirmPasswordNode.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onUpdatePass() {
    if (_formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();
      // TODO: Event update password
      _bloc.add(Submit(
        oldPassword: _oldPasswordController.text,
        newPassword: _newPasswordController.text,
        confirmPassword: _confirmPasswordController.text,
      ));
    }
  }

  void _onChangePasswordListener(
      BuildContext context, ChangePasswordState state) async {
    if (state.isLoading) {
      showAppLoading(
        context,
        riveAnimationPath: AppRiveAnimations.multiLoadingState,
        onInit: sl<MultiLoadingStateService>().init,
      );
    } else if (state.isSuccess) {
      sl<MultiLoadingStateService>().fireCheck();
      await _popAnimation(context);
      if (context.mounted) {
        showAppSnackbar(context,
            content: 'Đổi mật khẩu thành công',
            snackbarType: SnackbarType.success);
        await _backLogin(context);
      }
    } else if (state.failure != null) {
      sl<MultiLoadingStateService>().fireError();
      await _popAnimation(context);
      if (context.mounted) {
        showAppDialog(context,
            content: state.failure!.err, type: DialogType.ok, title: 'Lỗi');
      }
    }
  }

  Future<void> _popAnimation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        context.pop();
      }
    });
  }

  Future<void> _backLogin(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        onLogout(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocListener<ChangePasswordBloc, ChangePasswordState>(
        listener: _onChangePasswordListener,
        child: Scaffold(
            backgroundColor: BackgroundColors.backgroundDefaultPrimary,
            appBar: CustomAppbarSub(
              titleLeading: "Đổi mật khẩu",
            ),
            body: ChangePassForm(
                formKey: _formKey,
                oldPasswordController: _oldPasswordController,
                newPasswordController: _newPasswordController,
                confirmPasswordController: _confirmPasswordController,
                oldPasswordNode: _oldPasswordNode,
                newPasswordNode: _newPasswordNode,
                confirmPasswordNode: _confirmPasswordNode,
                onUpdatePass: _onUpdatePass)),
      ),
    );
  }
}
