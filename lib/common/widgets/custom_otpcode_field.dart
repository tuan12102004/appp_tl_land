import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:app_tl_land_3212/core/core_service_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class CustomOtpcodeField extends StatefulWidget {
  final void Function(String)? onCompleted;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const CustomOtpcodeField({
    super.key,
    this.onCompleted,
    this.controller,
    this.focusNode,
  });

  @override
  State<CustomOtpcodeField> createState() => _CustomOtpcodeFieldState();
}

class _CustomOtpcodeFieldState extends State<CustomOtpcodeField> {
  @override
  Widget build(BuildContext context) {
    // ô mặc định
    final defaultPinTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      textStyle: Theme.of(context).textTheme.titleMedium,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.backgroundDefaultPrimary,
        border: Border.all(
          width: 1.w,
          color: AppColors.borderSeparatorNonOpaque,
        ),
      ),
    );

    // ô đang focus
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: BorderColors.borderInputFieldFocused),
      ),
    );

    // ô đã nhập dữ liệu
    final submittedPinTheme =
        defaultPinTheme.copyWith(decoration: defaultPinTheme.decoration);

    return Pinput(
      length: 4,
      controller: widget.controller,
      focusNode: widget.focusNode,
      onCompleted: widget.onCompleted,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      cursor: _buildCursor(context), 
      preFilledWidget: _buildDivider(context),
      separatorBuilder: (_) => SizedBox(width: 16.w),
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      hapticFeedbackType: HapticFeedbackType.vibrate,
      keyboardType: TextInputType.number,
      keyboardAppearance: Brightness.light,
      autofocus: true,
      closeKeyboardWhenCompleted: true,
      animationDuration:Duration(milliseconds: 1),
      inputFormatters: [FormatterService.pinCodeFormatter],
    );
  }

  Widget _buildCursor(BuildContext context) {
    return Container(
      width: 1.5.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: AppColors.borderInputFieldDefault,
        borderRadius: BorderRadius.circular(2.r),
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      width: 10.w,
      height: 1.5.h,
      decoration: BoxDecoration(
        color: TextColors.textDefaultTertiary,
        borderRadius: BorderRadius.circular(2.r),
      ),
    );
  }
}
