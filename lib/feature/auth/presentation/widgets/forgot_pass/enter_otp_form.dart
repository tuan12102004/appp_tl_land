import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterOtpForm extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String? errorText;
  final ValueChanged<String> onCompleted;

  const EnterOtpForm({
    super.key,
    required this.controller,
    required this.focusNode,
    this.errorText,
    required this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOtpcodeField(
          controller: controller,
          focusNode: focusNode,
          onCompleted: onCompleted, 
        ),
        Visibility(
          visible: errorText != null,
          child: Column(
            children: [
              SizedBox(height: 16.h),
              Text(
                errorText ?? '',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: AppColors.textErrorPrimary),
              ),
            ],
          ),
        )
      ],
    );
  }
}