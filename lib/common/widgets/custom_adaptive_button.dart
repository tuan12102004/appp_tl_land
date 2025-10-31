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
  final Widget? suffixWidget;
  final AlignmentGeometry? alignment;
  final bool? isOpacity;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final List<BoxShadow>? boxShadow;
  final bool? spaceBetween;
  final Widget? child;

  const CustomAdaptiveButton({
    super.key,
    this.width,
    this.height,
    required this.onPressed,
    this.text,
    this.backgroundColor,
    this.textColor,
    this.padding,
    this.radius,
    this.borderColor = Colors.transparent,
    this.borderWidth,
    this.preffixWidget,
    this.suffixWidget,
    this.alignment,
    this.isOpacity,
    this.fontSize,
    this.fontWeight,
    this.boxShadow,
    this.spaceBetween = false,
    this.style,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildContent(BuildContext context) {
      final textWidget = Text(
        text ?? '',
        style: style ??
            Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: textColor ?? TextColors.textButtonPrimary,
                  fontSize: fontSize ?? 17.sp,
                  fontWeight: fontWeight ?? FontWeight.w400,
                ),
      );

      if (spaceBetween!) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 3.w,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (preffixWidget != null) ...[
                  preffixWidget!,
                ],
                textWidget,
              ],
            ),
            if (suffixWidget != null) suffixWidget!,
          ],
        );
      } else {
        return Row(
          spacing: 3.w,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (preffixWidget != null) ...[
              preffixWidget!,
            ],
            textWidget,
            if (suffixWidget != null) ...[
              suffixWidget!,
            ],
          ],
        );
      }
    }

    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    // If current platform is iOS
    if (isIOS) {
      return SizedBox(
        width: width,
        height: height,
        child: CupertinoButton(
            pressedOpacity: isOpacity == true ? 1.0 : null,
            color: backgroundColor ?? BackgroundColors.backgroundButtonPrimary,
            alignment: alignment ?? Alignment.center,
            minimumSize: Size.zero,
            padding: padding ??
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            borderRadius: BorderRadius.circular(radius ?? 12.r),
            onPressed: onPressed,
            child: buildContent(context)),
      );
    }

    // If current platform is android
    // return SizedBox(
    //   width: width,
    //   height: height,
    //   child: ElevatedButton(
    //       style: ElevatedButton.styleFrom(
    //         alignment: alignment,
    //         overlayColor: isOpacity == true ? Colors.transparent : null,
    //         backgroundColor:
    //             backgroundColor ?? BackgroundColors.backgroundButtonPrimary,
    //         padding: padding ??
    //             EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(radius ?? 12.r),
    //           side: BorderSide(width: borderWidth ?? 1.w, color: borderColor),
    //         ),
    //       ),
    //       onPressed: onPressed,
    //       child: buildContent(context)),
    // );
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? BackgroundColors.backgroundButtonPrimary,
        borderRadius: BorderRadius.circular(radius ?? 12.r),
        border: Border.all(width: borderWidth ?? 1.w, color: borderColor),
        boxShadow: boxShadow,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 12.r),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: padding ??
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
              child: buildContent(context),
            ),
          ),
        ),
      ),
    );
  }
}
