import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
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
      titleSpacing: 0,
      title: Row(
        children: [
          SizedBox(width: 8.w),
          GestureDetector(
            onTap: () {
              if (onLeading != null) {
                onLeading!();
              } else {
                context.pop();
              }
            },
            child: Icon(
              iconLeading ?? getAdaptiveBackIcon(context,),
              color: IconColors.iconNavigationBarEnabled,
              size: 22.sp,
            ),
          ),
          SizedBox(width: 8.w),
          Text(
            titleLeading ?? '',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 17.sp,
              color: TextColors.textNavigationBarEnabled
            ),
          ),
        ],
      ),
      actions: [
        if(isAction == true) ...[
          CustomAdaptiveButton(
            isOpacity: true,
            backgroundColor: BackgroundColors.backgroundDefaultPrimary,
            textColor: TextColors.textBrandPrimary,
            text: titleAction ?? '',
            onPressed:(){
              // TODO: Save images
              if (onAction != null) {
                onAction!();
              }
            },
          )
        ]
      ],
      centerTitle: false,
      isDivider: isDivider
    );
  }
}