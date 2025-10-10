import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      {'icon': Icons.notifications_outlined, 'label': 'Thông báo'},
      {'icon': Icons.account_circle, 'label': 'Tài khoản'},
    ];

    final selectedPageIndex = context.select((SelectBloc<int> bloc) =>
        bloc.state.when(initial: () => 0, selected: (value) => value));

    return SizedBox(
      width: double.infinity,
      height: kBottomNavigationBarHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // home (index 0)
          BottomNavButton(
            onPressed: () =>
                selectedPageIndex != 0 ? onNavItemPressed(context, 0) : null,
            isPressed: selectedPageIndex == 0,
            icon: buttonItems[0]['icon'],
            label: buttonItems[0]['label'],
          ),
          // search (index 1)
          BottomNavButton(
            onPressed: () =>
                selectedPageIndex != 1 ? onNavItemPressed(context, 1) : null,
            isPressed: selectedPageIndex == 1,
            icon: buttonItems[1]['icon'],
            label: buttonItems[1]['label'],
          ),
          // Khoảng trống cho FloatingActionButton
          const SizedBox(width: 10),
          // noti (index 3)
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              BottomNavButton(
                onPressed: () => selectedPageIndex != 3
                    ? onNavItemPressed(context, 3)
                    : null,
                isPressed: selectedPageIndex == 3,
                icon: buttonItems[2]['icon'],
                label: buttonItems[2]['label'],
              ),
              // Transform.translate(
              //   offset: Offset(-6, 13),
              Positioned(
                top: 7,
                right: 5.5,
                child: Container(
                  height: 15.sp,
                  width: 20.sp,
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.sp),
                      color: BackgroundColors.backgroundBadgeDefault),
                  child: Text(
                    "5+",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: TextColors.textBadgeDefault,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          height: 13.sp / 11.sp,
                          letterSpacing: 0.06.sp,
                        ),
                  ),
                ),
              )
            ],
          ),
          // account (index 4)
          BottomNavButton(
            onPressed: () =>
                selectedPageIndex != 4 ? onNavItemPressed(context, 4) : null,
            isPressed: selectedPageIndex == 4,
            icon: buttonItems[3]['icon'],
            label: buttonItems[3]['label'],
          ),
        ],
      ),
    );
  }

  void onNavItemPressed(BuildContext context, int index) {
    context.read<SelectBloc<int>>().add(SelectEvent.select(value: index));
    sl<PageController>().jumpToPage(index);
  }
}
