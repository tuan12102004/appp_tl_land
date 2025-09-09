import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomButton extends StatelessWidget {
  final Widget child;
  const CustomBottomButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: BackgroundColors.backgroundDefaultPrimary,
        border: Border(
          top: BorderSide(width: 1.h, color: BorderColors.borderDefaultDefault),
        ),
      ),
      child: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: SizedBox(
          width: double.infinity,
          height: kBottomNavigationBarHeight,
          child: child,
        ),
      ),
    );
  }
}
