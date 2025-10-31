import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdaptiveTapEffect extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final AlignmentGeometry alignment;
  final VoidCallback? onLongPress;
  final bool? isOpacity;
  final String? text;
  final Widget? preffixWidget;
  final Widget? suffixWidget;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final bool? isPositionTitle;
  final EdgeInsetsGeometry? padding;

  const CustomAdaptiveTapEffect({
    super.key,
    this.child,
    this.onPressed,
    this.alignment = Alignment.center,
    this.onLongPress,
    this.isOpacity,
    this.preffixWidget,
    this.suffixWidget,
    this.text,
    this.style,
    this.isPositionTitle,
    this.padding,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  }) : assert(child == null || text == null,
            'Cannot provide both a child and a text widget.');

  @override
  Widget build(BuildContext context) {
    Widget buildContent(BuildContext context) {
      if (child != null) {
        return child!;
      }

      final textWidget = Text(
        text ?? '',
        style: style ??
            Theme.of(context).textTheme.titleMedium!.copyWith(
                color: textColor ?? TextColors.textButtonPlain,
                fontSize: fontSize,
                fontWeight: fontWeight),
      );
      return Row(
        mainAxisAlignment: isPositionTitle == true
            ? MainAxisAlignment.end
            : MainAxisAlignment.center,
        mainAxisSize:
            isPositionTitle == true ? MainAxisSize.max : MainAxisSize.min,
        children: [
          if (preffixWidget != null) ...[
            preffixWidget!,
            SizedBox(
              width: 10.w,
            )
          ],
          textWidget,
          if (suffixWidget != null) ...[
            SizedBox(
              width: 6.w,
            ),
            suffixWidget!,
          ],
        ],
      );
    }

    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    // If current platform is iOS
    if (isIOS) {
      return CupertinoButton(
        onLongPress: onLongPress,
        color: Colors.transparent,
        alignment: alignment,
        minimumSize: Size.zero,
        padding: padding ?? EdgeInsets.zero,
        onPressed: onPressed,
        pressedOpacity: isOpacity == true ? 1.0 : null,
        child: buildContent(context),
      );
    }

    // If current platform is android
    // return ElevatedButton(
    //   onPressed: onPressed,
    //   onLongPress: onLongPress,
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: Colors.transparent,
    //     shadowColor: Colors.transparent,
    //     alignment: alignment,
    //     elevation: 0,
    //     minimumSize: Size.zero,
    //     padding: padding ?? EdgeInsets.zero,
    //     overlayColor: isOpacity == true ? Colors.transparent : null,
    //     visualDensity: VisualDensity.compact,
    //   ),
    //   child: buildContent(context),
    // );
    return InkWell(
      onTap: onPressed,
      onLongPress: onLongPress,
      overlayColor: isOpacity == true
          ? MaterialStateProperty.resolveWith<Color?>(
              (states) => Colors.transparent)
          : null,
      child: Container(
        padding: padding ?? EdgeInsets.zero,
        child: buildContent(context),
      ),
    );
  }
}
