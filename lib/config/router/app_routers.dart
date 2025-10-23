import 'package:app_tl_land_3212/config/config_router_module.dart';
import 'package:app_tl_land_3212/config/router/post_routers.dart';
import 'package:app_tl_land_3212/config/router/search_routers.dart';
import 'package:app_tl_land_3212/core/constants/app_globals.dart';
import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/navigation/presentation/pages/navigation_page.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  AppRouters._(); // constructor private
  static final GoRouter routers = GoRouter(
    navigatorKey: navigatorKey,

    // Khi app khởi động, nó sẽ mở màn hình có đường dẫn /intro/splash đầu tiên.
    // initialLocation: '/intro/splash',
    // Dành cho đi thẳng vô home
    // initialLocation: '/auth/login',
    initialLocation: '/intro/splash',
    // danh sách các route
    routes: [
      // Router của intro
      IntroRouters.routers,
      // Router của auth
      AuthRouters.routers,
      // Router vào trang chủ
      GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              buildPageWithSlideTransition(NavigationPage(), state)),

      // Router vào trang chủ
      HomeRouters.routers,
      // Router vào tạo bđs
      PostRouters.routers,
      // Router vào trang thông báo
      NotificationRouters.routers,
      // Router vào trang cá nhân
      ProfileRouters.routers,
      // Router vào trang tìm kiếm
      SearchRouters.routers,
    ],
  );
}
