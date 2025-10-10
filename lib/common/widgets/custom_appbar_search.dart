import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbarSearch extends StatelessWidget
    implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  final bool automaticallyImplyTrailing;
  final bool hideSearchBar;
  final TextEditingController? textController;
  final String title;
  final String? hintText;
  final List<Widget>? actions;
  final bool? hasData;
  final IconData? actionIcon;
  final VoidCallback? onTrailingTap;
  final VoidCallback? onSearchBarTap;
  final ValueChanged<String>? onSearchBarChanged;
  final ValueChanged<String>? onSearchBarSubmitted;

  const CustomAppbarSearch({
    super.key,
    required this.automaticallyImplyLeading,
    this.automaticallyImplyTrailing = false,
    required this.hideSearchBar,
    required this.title,
    this.textController,
    this.hintText,
    this.hasData = false,
    this.actions,
    this.onTrailingTap,
    this.onSearchBarTap,
    this.onSearchBarChanged,
    this.onSearchBarSubmitted,
    this.actionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisSize: MainAxisSize.min,
      children: [
        // * Appbar
        CustomAppbar(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: TextColors.textNavigationBarDefault,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.43.sp),
          ),
          leading: automaticallyImplyLeading
              ? CustomAdaptiveTapEffect(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Icon(getAdaptiveBackIcon(context),
                      size: 22.sp, color: IconColors.iconNavigationBarEnabled),
                )
              : null,
          actions: actions ?? (automaticallyImplyTrailing
              ? [
                  CustomAdaptiveTapEffect(
                    onPressed: onTrailingTap != null ? onTrailingTap! : () {},
                    child: Icon(actionIcon ?? Icons.more_vert,
                        size: 22.sp,
                        color: IconColors.iconNavigationBarEnabled),
                  )
                ]
              : []),
        ),

        // * Search
        if (!hideSearchBar) Padding(
                padding: EdgeInsets.only(
                    left: 16.w, right: 16.w, top: 1.h, bottom: 15.h),
                child: CustomSearchBar(
                  controller: textController,
                  onChanged: onSearchBarChanged,
                  onSubmitted: onSearchBarSubmitted,
                  onTap: onSearchBarTap,
                  hintText: hintText,
                ),
              ) else SizedBox.shrink(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
