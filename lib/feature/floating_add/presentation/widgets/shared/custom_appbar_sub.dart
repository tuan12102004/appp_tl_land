import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/get_adaptive_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAppbarSub extends StatelessWidget implements PreferredSizeWidget {
  final IconData? iconLeading;
  final VoidCallback? onLeading;
  final String? titleLeading;
  final String? titleAction;
  final VoidCallback? onAction;
  final bool? isAction;
  final bool? isDivider;
  const CustomAppbarSub({
    super.key,
    this.iconLeading,
    this.titleLeading,
    this.titleAction,
    this.onLeading,
    this.onAction,
    this.isAction = false,
    this.isDivider = true,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
        automaticallyImplyLeading: false,
        leadingWidth: double.infinity,
        leading: CustomAdaptiveTapEffect(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 11.h),
          isOpacity: true,
          onPressed: () {
            if (onLeading != null) {
              onLeading!();
            } else {
              context.pop();
            }
          },
          child: Row(
            spacing: 6.w,
            children: [
              Icon(
                iconLeading ??
                    getAdaptiveBackIcon(
                      context,
                    ),
                size: 22.sp,
                color: AppColors.iconInputFieldLeadingIcon,
              ),
              Text(titleLeading ?? '',
                  style: Theme.of(context).appBarTheme.titleTextStyle)
            ],
          ),
        ),
        actions: [
          if (isAction == true) ...[
            CustomAdaptiveButton(
              isOpacity: true,
              backgroundColor: BackgroundColors.backgroundDefaultPrimary,
              textColor: TextColors.textBrandPrimary,
              text: titleAction ?? '',
              onPressed: () {
                // TODO: Save images
                if (onAction != null) {
                  onAction!();
                }
              },
            )
          ]
        ],
        centerTitle: false,
        isDivider: isDivider);
  }
}
