import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final FocusNode _emailNode;
  final TextEditingController _emailCon;
  final VoidCallback onEnterEmail;
  const ForgotPassForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required FocusNode emailNode,
    required TextEditingController emailCon,
    required this.onEnterEmail,
  })  : _formKey = formKey,
        _emailNode = emailNode,
        _emailCon = emailCon;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomInputField(
              hintText: "Email của bạn",
              focusNode: _emailNode,
              controller: _emailCon,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () => FocusScope.of(context).unfocus(),
              validator: (value) => InputValidators.validateEmail(value)),
          SizedBox(height: 16.h),
          CustomAdaptiveButton(
            width: double.infinity,
            onPressed: onEnterEmail,
            text: 'Tiếp tục',
          ),
        ],
      ),
    );
  }
}
