import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool visibleBottom;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final bool? isDivider;
  final double? leadingWidth;
  final bool? centerTitle;
  final double? titleSpacing;

  const CustomAppbar({
    super.key,
    this.title,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.backgroundColor,
    this.visibleBottom = false,
    this.leading,
    this.bottom,
    this.leadingWidth,
    this.isDivider = true,
    this.centerTitle,
    this.titleSpacing = 0
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      surfaceTintColor: backgroundColor,
      forceMaterialTransparency: true,
      title: title,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      actions: actions,
      leading: leading,
      bottom: isDivider == true 
        ? PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Divider(height: 1.h, color: BorderColors.borderDefaultDefault.withValues(alpha: 0.2)),
          )
        : _getAppbarBottom(),
      leadingWidth: leadingWidth,
    );
  }

  PreferredSize? _getAppbarBottom() {
    return visibleBottom
        ? PreferredSize(
            preferredSize: preferredSize,
            child: Divider(
              height: 0.3.h,
              color: BorderColors.borderDefaultDefault,
            ),
          )
        : null;
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
