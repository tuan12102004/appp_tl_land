import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportItem extends StatelessWidget {
  const SupportItem({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: BackgroundColors.backgroundDefaultPrimary,
          border: Border(
            bottom: BorderSide(
              color: BorderColors.borderSeparatorNonOpaque.withValues(alpha: 0.2), 
              width: 0.3.w
            )
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(children: [
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
      ),
    );
  }
}
