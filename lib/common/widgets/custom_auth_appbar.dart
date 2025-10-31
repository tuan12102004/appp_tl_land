import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_adaptive_tap_effect.dart';
import 'custom_appbar.dart';

class CustomAuthAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAuthAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      isDivider: true,
      leadingWidth: double.infinity,
      leading: CustomAdaptiveTapEffect(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 11.h),
        isOpacity: true,
        onPressed: () => Navigator.of(context).maybePop(),
        child: Row(
          spacing: 6.w,
          children: [
            Icon(
              getAdaptiveBackIcon(context),
              size: 22.sp,
              color: AppColors.iconInputFieldLeadingIcon,
            ),
            Text("Quay lại",
                style: Theme.of(context).appBarTheme.titleTextStyle)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
