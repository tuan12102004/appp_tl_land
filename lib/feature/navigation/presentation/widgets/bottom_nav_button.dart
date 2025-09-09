import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function() onPressed;
  final bool isPressed;

  const BottomNavButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.isPressed = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAdaptiveTapEffect(
      onPressed: onPressed,
      child: Column(
        spacing: 4.h,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isPressed
                ? AppColors.iconTabBarSelected
                : AppColors.iconTabBarUnselected,
            size: 24.sp,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: isPressed
                      ? TextColors.textTabBarSelected
                      : TextColors.textTabBarUnselected,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
