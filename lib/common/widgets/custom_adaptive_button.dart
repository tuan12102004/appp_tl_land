import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdaptiveButton extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback onPressed;
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  final Color borderColor;
  final double? borderWidth;
  final Widget? preffixWidget;
  final AlignmentGeometry? alignment;
  final bool? isOpacity;
  final double? fontSize;

  const CustomAdaptiveButton({
    super.key,
    this.width,
    this.height,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.padding,
    this.radius,
    this.borderColor = Colors.transparent,
    this.borderWidth,
    this.preffixWidget,
    this.alignment,
    this.isOpacity,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    // If current platform is iOS
    if (isIOS) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 12.r),
          border: Border.all(width: borderWidth ?? 1.w, color: borderColor),
        ),
        child: CupertinoButton(
          pressedOpacity: isOpacity == true ? 1.0 : null,
          color: backgroundColor ?? BackgroundColors.backgroundButtonPrimary,
          alignment: alignment ?? Alignment.center,
          minSize: 0,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          borderRadius: BorderRadius.circular(radius ?? 12.r),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 3.w,
            children: [
              if (preffixWidget != null) preffixWidget!,
              if (text != null)
                Text(
                  text ?? '',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: textColor ?? TextColors.textButtonPrimary,
                      ),
                ),
            ],
          ),
        ),
      );
    }

    // If current platform is android
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: alignment,
          overlayColor: isOpacity == true ? Colors.transparent : null,
          backgroundColor:
              backgroundColor ?? BackgroundColors.backgroundButtonPrimary,
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 12.r),
            side: BorderSide(width: borderWidth ?? 1.w, color: borderColor),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 3.w,
          children: [
            if (preffixWidget != null) preffixWidget!,
            if (text != null)
              Text(
                text ?? '',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: fontSize ?? 16.sp,
                  color: textColor ?? TextColors.textButtonPrimary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
