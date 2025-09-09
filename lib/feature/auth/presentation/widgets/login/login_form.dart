import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController _usernameCon;
  final FocusNode _usernameNode;
  final FocusNode _passwordNode;
  final TextEditingController _passwordCon;
  final VoidCallback onLogin;
  final VoidCallback onFogotThePass;

  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController usernameCon,
    required FocusNode usernameNode,
    required FocusNode passwordNode,
    required TextEditingController passwordCon,
    required this.onLogin,
    required this.onFogotThePass,
  })  : _formKey = formKey,
        _usernameCon = usernameCon,
        _usernameNode = usernameNode,
        _passwordNode = passwordNode,
        _passwordCon = passwordCon;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // User name field
          CustomInputField(
            hintText: "Email của bạn",
            controller: _usernameCon,
            focusNode: _usernameNode,
            textInputAction: TextInputAction.next,
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(_passwordNode),
            keyboardType: TextInputType.emailAddress,
            validator: InputValidators.validateEmail,
          ),

          // Password field
          CustomPassField(
            hintText: "Mật khẩu",
            controller: _passwordCon,
            focusNode: _passwordNode,
            validator: InputValidators.validatePassword,
          ),

          // Login button
          CustomAdaptiveButton(
            onPressed: () {
              if (_formKey.currentState?.validate() == true) {
                onLogin();
              }
            },
            text: "Đăng nhập",
          ),

          // Forgot the password
          CustomAdaptiveButton(
            backgroundColor: Colors.transparent,
            textColor: TextColors.textButtonPlain,
            onPressed: () => onFogotThePass(),
            text: "Quên mật khẩu?",
          ),
        ],
      ),
    );
  }
}
