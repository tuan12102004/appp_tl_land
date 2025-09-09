import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app_tl_land_3212/core/di/service_locator.dart';

import 'bottom_nav_button.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttonItems = [
      {'icon': Icons.home, 'label': 'Trang chủ'},
      {'icon': Icons.search, 'label': 'Tìm kiếm'},
      {'icon': Icons.notifications, 'label': 'Thông báo'},
      {'icon': Icons.account_circle, 'label': 'Tài khoản'},
    ];

    final selectedPageIndex = context.select((SelectBloc<int> bloc) =>
        bloc.state.when(initial: () => 0, selected: (value) => value));

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: BackgroundColors.backgroundNavigationBarDefaultSolid,
        border: Border(
          top: BorderSide(
            color: BorderColors.borderDefaultDefault,
            width: 0.3.w,
          ),
        ),
      ),
      child: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
        child: SizedBox(
          width: double.infinity,
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List<Widget>.generate(buttonItems.length, (index) {
              return index != 3
                  ? BottomNavButton(
                      onPressed: () => index != selectedPageIndex
                          ? onNavItemPressed(context, index)
                          : {},
                      isPressed: index == selectedPageIndex,
                      icon: buttonItems[index]['icon'],
                      label: buttonItems[index]['label'],
                    )
                  : Stack(
                      alignment: Alignment.topRight,
                      children: [
                        BottomNavButton(
                          onPressed: () => index != selectedPageIndex
                              ? onNavItemPressed(context, index)
                              : {},
                          isPressed: index == selectedPageIndex,
                          icon: buttonItems[index]['icon'],
                          label: buttonItems[index]['label'],
                        ),
                        Transform.translate(
                          offset: Offset(-8, 3),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 1.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.sp),
                                color: BackgroundColors.backgroundBadgeDefault),
                            child: Text(
                              "9+",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: TextColors.textTabBarUnselected,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        )
                        // BlocBuilder<NotificationBloc, NotificationState>(
                        //   builder: (context, state){
                        //     if(state.isSuccess){
                        //       final unreadCount = state.notifications
                        //       .where((noti) => noti.status == "Chưa đọc")
                        //       .length;
                        //       if(unreadCount == 0) return SizedBox();
                        //       return Transform.translate(
                        //         offset: Offset(-8, 3),
                        //         child: Container(
                        //           padding: EdgeInsets.symmetric(
                        //               horizontal: 2.w, vertical: 1.h),
                        //           decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(100.sp),
                        //               color: BackgroundColors.backgroundBadgeDefault),
                        //           child: Text(
                        //              "${unreadCount < 9 ? unreadCount : 9}+",
                        //             style: Theme.of(context)
                        //             .textTheme.labelSmall!.copyWith(
                        //               color: TextColors.textBadgeDefault,
                        //               fontSize: 11.sp,
                        //               fontWeight: FontWeight.w600,
                        //               height: 13.sp / 11.sp,
                        //               letterSpacing: 0.06.sp,
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     }
                        //     return SizedBox();
                        //   }
                        // )
                      ],
                    );
            }),
          ),
        ),
      ),
    );
  }

  void onNavItemPressed(BuildContext context, int index) {
    context.read<SelectBloc<int>>().add(SelectEvent.select(index));
    sl<PageController>().jumpToPage(index);
  }
}
