import 'package:app_tl_land_3212/common/enums/validate_type.dart';
import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/common/widgets/custom_pass_field.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
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
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextTheme.of(context).titleLarge!.copyWith(
          color: AppColors.textDefaultPrimary,
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
          height: 22 / 17,
          letterSpacing: -0.43.sp,
          fontFamily: 'Inter',
        );

    // final hintStyle = TextTheme.of(context).titleLarge!.copyWith(
    //       color: AppColors.textDefaultTertiary,
    //       fontSize: 17.sp,
    //       fontWeight: FontWeight.w400,
    //       height: 22 / 17,
    //       letterSpacing: -0.43.sp,
    //       fontFamily: 'Inter',
    //     );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 1.29.sp,
            letterSpacing: -0.43.sp,
          ),
        ),
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
                style: textStyle,
                hintText: hintText,
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
