import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController _passCon;
  final TextEditingController _confirmPassCon;
  final FocusNode _passNode;
  final FocusNode _confirmPassNode;
  final VoidCallback onPressed;

  const ResetPassForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController passCon,
    required TextEditingController confirmPassCon,
    required FocusNode passNode,
    required FocusNode confirmPassNode,
    required this.onPressed,
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
            hintText: 'Mật khẩu mới',
            validator: (value) => InputValidators.validatePassword(value),
            controller: _passCon,
            focusNode: _passNode,
          ),
          SizedBox(height: 16.h),
          CustomPassField(
            focusNode: _confirmPassNode,
            controller: _confirmPassCon,
            onEditingComplete: () => FocusScope.of(context).unfocus(),
            hintText: 'Nhập lại mật khẩu mới',
            validator: (value) => InputValidators.validateConfirmPassword(
              _passCon.text,
              value,
            ),
          ),
          SizedBox(height: 16.h),
          // Button reset
          CustomAdaptiveButton(
            width: double.infinity,
            onPressed: onPressed,
            text: 'Cập nhật',
          ),
        ],
      ),
    );
  }
}
