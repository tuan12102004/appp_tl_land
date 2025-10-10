import 'dart:io';

import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBarButton extends StatelessWidget {
  final String title;
  final Widget? icon;
  final bool? isBorderTop;
  final bool? isBoxShadowTop;
  final Color backgroundColor;
  final VoidCallback onPressed;
  const CustomBottomBarButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.icon,
      this.isBorderTop = false,
      this.isBoxShadowTop = false,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: BackgroundColors.backgroundDefaultPrimary,
            boxShadow: [
              if (isBoxShadowTop == true)
                BoxShadow(
                  color: BorderColors.borderDefaultDefault.withValues(alpha: 0.2),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                ),
            ],
            border: Border(
              top: BorderSide(
                  width: isBorderTop == false ? 0 : 0.6.w,
                  color: BorderColors.borderDefaultDefault.withValues(alpha: 0.3)),
            )
          ),
        child: SafeArea(
          minimum: EdgeInsets.all(20.w),
          child: CustomAdaptiveButton(
            text: title,
            preffixWidget: icon,
            backgroundColor: backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: Platform.isAndroid ? 20.h : 14.h),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
