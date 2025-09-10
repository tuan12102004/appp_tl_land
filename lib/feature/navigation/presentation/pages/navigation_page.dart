import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_tl_land_3212/core/di/service_locator.dart';

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
    Container(),
    Container(),
    NotificationPage(),
    Container(),
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

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SelectBloc<int>>()..add(SelectEvent.select(0)),
      child: BlocBuilder<SelectBloc<int>, SelectState<int>>(
        builder: (context, state) {
          return Scaffold(
            body: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                context.read<SelectBloc<int>>().add(SelectEvent.select(index));
              },
              itemCount: listPages.length,
              itemBuilder: (context, index) => listPages[index],
              physics: NeverScrollableScrollPhysics(),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomNav(),
          );
        },
      ),
    );
  }
}
