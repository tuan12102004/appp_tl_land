import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  // Border
  final bool showBorder;
  final Color? borderColor;

  // Large Title
  final bool showLargeTitle;
  final String? largeTitle;

  // Close
  final bool showCloseWithLabel;
  final String? closeLabel;

  // Leading
  final bool automaticallyImplyLeading;
  final Widget? leading;

  // Trailing
  final bool? showNotificationIcon;
  final int badgeCount;
  final VoidCallback? onNotificationPressed;
  final bool? showFilterIcon;
  final VoidCallback? onFilterPressed;
  final bool? showDoneAllIcon;
  final VoidCallback? onDoneAllPressed;

  const AppMainAppBar({
    super.key,
    required this.title,
    required this.showBorder,
    this.borderColor,
    required this.showLargeTitle,
    this.largeTitle,
    required this.automaticallyImplyLeading,
    this.leading,
    this.showNotificationIcon,
    this.badgeCount = 0,
    this.onNotificationPressed,
    this.showFilterIcon,
    this.onFilterPressed,
    this.showDoneAllIcon,
    this.onDoneAllPressed,
    this.showCloseWithLabel = false,
    this.closeLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: CustomAppbar(
        leadingWidth: 100.w,
        title: Text(
          title,
          style: TextTheme.of(context).titleMedium!.copyWith(
                color: TextColors.textNavigationBarDefault,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                height: (22 / 17).sp,
                letterSpacing: -0.43.sp,
              ),
        ),
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 8.w),
          child: leading ??
              (showCloseWithLabel
                  ? GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.close,
                            color: BasicColors.blueZodiac500,
                            size: 24.sp,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            closeLabel ?? "Đóng",
                            style: TextStyle(
                              color: BasicColors.blueZodiac500,
                              fontSize: 17.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.29.sp,
                              letterSpacing: -0.43.sp,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink()),
        ),
        actions: [],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(
            (showLargeTitle ? 48.h : 0) + (showBorder ? 0.3.h : 0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Large Title
              if (showLargeTitle && (largeTitle?.isNotEmpty ?? false)) ...[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 6.h,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      largeTitle!,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: TextColors.textNavigationBarDefault,
                            fontSize: 34.sp,
                            fontWeight: FontWeight.w700,
                            height: (41 / 34).sp,
                            letterSpacing: 0.4.sp,
                          ),
                    ),
                  ),
                ),
              ],

              // Border bottom
              if (showBorder)
                Container(
                  height: 0.3.h,
                  color: borderColor ?? BorderColors.borderDefaultDefault,
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight + (showLargeTitle ? 48.h : 0) + (showBorder ? 0.3.h : 0),
      );
}
