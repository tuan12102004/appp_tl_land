import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: BackgroundColors.backgroundDefaultPrimary,
        padding: EdgeInsets.all(16.w),
        child: Row(children: [
          Icon(
            icon,
            color: BasicColors.gray600,
            size: 24.sp,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                  color: TextColors.textDefaultPrimary,
                ),
          ),
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_right,
            color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
            size: 24.sp,
          ),
        ]),
      ),
    );
  }
}
