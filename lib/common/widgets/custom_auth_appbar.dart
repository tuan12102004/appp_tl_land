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
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      isDivider: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAdaptiveTapEffect(
            isOpacity: true,
            onPressed: () => Navigator.of(context).maybePop(),
            child: Row(
              children: [
                Icon(
                  getAdaptiveBackIcon(context),
                  size: 24.sp,
                  color: AppColors.iconInputFieldLeadingIcon,
                ),
                Text("Quay lại",
                    style: Theme.of(context).appBarTheme.titleTextStyle)
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
