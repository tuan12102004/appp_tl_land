import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ResetPassForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController _passCon;
  final TextEditingController _confirmPassCon;
  final FocusNode _passNode;
  final FocusNode _confirmPassNode;

  const ResetPassForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController passCon,
    required TextEditingController confirmPassCon,
    required FocusNode passNode,
    required FocusNode confirmPassNode,
  })  : _formKey = formKey,
        _passCon = passCon,
        _confirmPassCon = confirmPassCon,
        _passNode = passNode,
        _confirmPassNode = confirmPassNode;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomPassField(
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(_confirmPassNode),
            hintText: 'Nhập mật khẩu',
            validator: (value) => InputValidators.validatePassword(value),
            controller: _passCon,
            focusNode: _passNode,
          ),
          SizedBox(height: 16.h),
          CustomPassField(
            focusNode: _confirmPassNode,
            controller: _confirmPassCon,
            onEditingComplete: () => FocusScope.of(context).unfocus(),
            hintText: 'Nhập lại mật khẩu',
            validator: (value) => InputValidators.validateConfirmPassword(
              value,
              _passCon.text,
            ),
          ),
          SizedBox(height: 16.h),
          // Button reset
          CustomAdaptiveButton(
            onPressed: () => _onConfirmPass(context),
            text: 'Cập nhập',
          ),
        ],
      ),
    );
  }

  void _onConfirmPass(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      // Gọi event cập nhật mật khẩu
      context.go('/auth/login');
    }
  }
}
