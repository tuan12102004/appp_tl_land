import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey;
  final FocusNode _emailNode;
  final TextEditingController _emailCon;
  const ForgotPassForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required FocusNode emailNode,
    required TextEditingController emailCon,
  })  : _formKey = formKey,
        _emailNode = emailNode,
        _emailCon = emailCon;

  void _onEnterEmail(BuildContext context) {
    _unFocus(context);
    // context.push(
    //   '/auth/enter-otp',
    //   extra: {
    //     'email': _emailCon.text.trim(),
    //     'onCompleted': (BuildContext context) {
    //       context.go('/auth/reset-pass');
    //     },
    //   },
    // );
    if (_formKey.currentState?.validate() ?? false) {
      // Gọi event xác thực email
      context.push(
        '/auth/enter-otp',
        extra: {
          'email': formatHiddenEmail(_emailCon.text.trim()),
          'onCompleted': (BuildContext context) {
            context.go('/auth/reset-pass');
          },
        },
      );
    }
  }

  // Unfocus
  void _unFocus(BuildContext context) => FocusScope.of(context).unfocus();

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
            onPressed: () => _onEnterEmail(context),
            text: 'Tiếp tục',
          ),
        ],
      ),
    );
  }
}
