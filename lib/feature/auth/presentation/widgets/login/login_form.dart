import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController usernameCon;
  final FocusNode usernameNode;
  final FocusNode passwordNode;
  final TextEditingController passwordCon;
  final VoidCallback onLogin;
  final VoidCallback onForgotThePass;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.usernameCon,
    required this.usernameNode,
    required this.passwordNode,
    required this.passwordCon,
    required this.onLogin,
    required this.onForgotThePass,
  });
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomInputField(
            hintText: "Email của bạn",
            controller: usernameCon,
            focusNode: usernameNode,
            textInputAction: TextInputAction.next,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(passwordNode),
            keyboardType: TextInputType.emailAddress,
            validator: InputValidators.validateEmail,
          ),
          SizedBox(height: 16.h),
          CustomPassField(
            hintText: "Mật khẩu",
            controller: passwordCon,
            focusNode: passwordNode,
            validator: InputValidators.validatePassword,
            onEditingComplete: onLogin,
          ),
          SizedBox(height: 16.h),
          CustomAdaptiveButton(
            width: double.infinity,
            onPressed: onLogin,
            text: 'Đăng nhập',
          ),
          SizedBox(height: 8.h),
          CustomAdaptiveButton(
            width: double.infinity,
            backgroundColor: Colors.transparent,
            textColor: TextColors.textButtonPlain,
            onPressed: onForgotThePass,
            text: "Quên mật khẩu?",
          ),
        ],
      ),
    );
  }
}
