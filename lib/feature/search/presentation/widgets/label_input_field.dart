import 'package:app_tl_land_3212/common/enums/validate_type.dart';
import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/common/widgets/custom_pass_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextStyle? style;

  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType? keyboardType;
  final InputFieldType? inputFieldType;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final String? Function(String?)? validator;
  final double? spacing;
  final VoidCallback? onTap;
  final bool readOnly;
  final Widget? suffixIcon;

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
    this.validator,
    this.style,
    this.spacing,
    this.onTap,
    this.readOnly = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: spacing ?? 4.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: style ?? TextTheme.of(context).bodyMedium),
        inputFieldType == InputFieldType.password
            ? CustomPassField(
                controller: controller,
                focusNode: focusNode,
                textInputAction: textInputAction,
                onEditingComplete: onEditingComplete,
                hintText: hintText,
              )
            : CustomInputField(
                readOnly: readOnly,
                controller: controller,
                focusNode: focusNode,
                textInputAction: textInputAction,
                onEditingComplete: onEditingComplete,
                keyboardType: keyboardType,
                validator: validator,
                style: TextTheme.of(context).titleMedium,
                hintText: hintText,
                maxLength: maxLength,
                counterText: '',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 11.h,
                ),
                suffixIcon: suffixIcon,
                onChanged: onChanged, // 👈 truyền xuống
                onTap: onTap,
              ),
      ],
    );
  }
}
