import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';

enum IconPosition { left, right }

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final IconData icon;
  final String label;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final IconPosition iconPosition;

  const CustomIconButton({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
    this.borderRadius,
    this.padding,
    this.iconPosition = IconPosition.left,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(
      icon,
      size: 20.sp,
      color: iconColor ?? Colors.white,
    );

    final textWidget = Text(
      label,
      style: TextStyle(
        color: textColor ?? AppColors.textButtonPrimary,
        fontSize: 15.sp,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 1.33,
        letterSpacing: -0.23.sp,
      ),
    );

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: backgroundColor ?? BasicColors.blueZodiac500,
          borderRadius: BorderRadius.circular(borderRadius ?? 40.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: iconPosition == IconPosition.left
              ? [
                  iconWidget,
                  SizedBox(width: 4.w),
                  textWidget,
                ]
              : [
                  textWidget,
                  SizedBox(width: 4.w),
                  iconWidget,
                ],
        ),
      ),
    );
  }
}
