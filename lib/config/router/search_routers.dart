import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/search/presentation/pages/search_filter_page.dart';
import 'package:app_tl_land_3212/feature/search/presentation/pages/search_page.dart';
import 'package:go_router/go_router.dart';

class SearchRouters {
  SearchRouters._();

  static final GoRoute routers = GoRoute(
    path: '/search',
    pageBuilder: (context, state) {
      final extra = state.extra as Map<String, dynamic>;
      final filterCategory = extra['filterCategory'];
      return buildPageWithSlideTransition(SearchPage(filterCategory: filterCategory,), state);
    },
    routes: [
      // Nhập
      GoRoute(
        path: '/filter',
        pageBuilder: (context, state) {
          return buildPageWithSlideTransition(
              SearchFilterPage(title: 'Search Filter'), state);
        },
        routes: [],
      ),
    ],
  );
}
