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

  final double? leadingWidth;

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
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      surfaceTintColor: backgroundColor,
      title: title,
      actions: actions,
      leading: leading,
      bottom: _getAppbarBottom(),
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
