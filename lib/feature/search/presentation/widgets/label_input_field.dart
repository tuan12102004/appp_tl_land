import 'package:app_tl_land_3212/common/enums/validate_type.dart';
import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/common/widgets/custom_pass_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelInputField extends StatelessWidget {
  final String label;
  final String hintText;

  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType? keyboardType;
  final InputFieldType inputFieldType;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;
  final ValueChanged<String>? onChanged;
  final int? maxLength;

  const LabelInputField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.focusNode,
    required this.inputFieldType,
    this.keyboardType = TextInputType.phone,
    this.textInputAction,
    this.onEditingComplete,
    this.onChanged,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: TextTheme.of(context).bodyMedium),
        SizedBox(height: 4.h),
        inputFieldType == InputFieldType.password
            ? CustomPassField(
                controller: controller,
                focusNode: focusNode,
                textInputAction: textInputAction,
                onEditingComplete: onEditingComplete,
                hintText: hintText,
              )
            : CustomInputField(
                controller: controller,
                focusNode: focusNode,
                textInputAction: textInputAction,
                onEditingComplete: onEditingComplete,
                keyboardType: keyboardType,
                style: TextTheme.of(context).titleMedium,
                hintText: hintText,
                maxLength: maxLength,
                counterText: '',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 11.h,
                ),
                onChanged: onChanged, // 👈 truyền xuống
              ),
      ],
    );
  }
}
