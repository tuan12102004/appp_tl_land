import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/pages/floating_add_page.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/pages/notification.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/pages/profile.dart';
import 'package:app_tl_land_3212/feature/search/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/bottom_nav.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({
    super.key,
  });

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final listPages = [
HomePage(),
    SearchPage(),
    FloatingAddPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    sl.registerSingleton<PageController>(_pageController);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNavItemPressed(BuildContext context, int index) {
    context.read<SelectBloc<int>>().add(SelectEvent.select(index));
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<SelectBloc<int>>()..add(const SelectEvent.select(0)),
      child: BlocBuilder<SelectBloc<int>, SelectState<int>>(
        builder: (context, state) {
          return Scaffold(
            extendBody: true,
            body: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<SelectBloc<int>>().add(SelectEvent.select(index));
              },
              itemCount: listPages.length,
              itemBuilder: (context, index) => listPages[index],
              physics: const NeverScrollableScrollPhysics(),
            ),
            floatingActionButton: SizedBox(
              width: 50.w,
              height: 50.w,
              child: FloatingActionButton(
                onPressed: () => _onNavItemPressed(context, 2),
                backgroundColor: BackgroundColors.backgroundBrandPrimary,
                elevation: 1,
                shape: const CircleBorder(),
                child: Icon(
                  Icons.add,
                  color: IconColors.iconBrandOnbrand,
                  size: 24.sp,
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: BottomAppBar(
                color: BackgroundColors.backgroundDefaultPrimary,
                shape: CircularNotchedRectangle(),
                notchMargin: 15,
                child: const BottomNav(),
              ),
            ),
<<<<<<< HEAD
=======
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomNav(),
>>>>>>> 7daecc0 (ui search)
          );
        },
      ),
    );
  }
}
