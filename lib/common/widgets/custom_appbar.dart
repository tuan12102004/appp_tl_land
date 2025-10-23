import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget? leading;
  final bool? isDivider;
  final PreferredSizeWidget? bottom;
  final double? leadingWidth;
  final bool? centerTitle;
  final double? titleSpacing;

  const CustomAppbar({
    super.key,
    this.title,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.backgroundColor,
    this.isDivider = true,
    this.leading,
    this.leadingWidth,
    this.bottom,
    this.centerTitle,
    this.titleSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: automaticallyImplyLeading,
        surfaceTintColor: backgroundColor,
        forceMaterialTransparency: true,
        title: title,
        actions: actions,
        leading: leading,
        leadingWidth: leadingWidth,
        scrolledUnderElevation: 4,
        bottom: isDivider == true
            ? PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Divider(
                    height: 0.3.h,
                    color: BorderColors.borderDefaultDefault
                        .withValues(alpha: 0.1)),
              )
            : null);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
