
import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/category_page.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/detail_real_estate_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRouters {
  HomeRouters._();

  static final GoRoute routers = GoRoute(
    path: '/home',
    pageBuilder:
        (context, state) => buildPageWithSlideTransition(SizedBox(), state),
    routes: [
      GoRoute(
        path: 'categories',
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final categories = extra['categories'];
          return buildPageWithSlideTransition(
            CategoryPage(
              categories: categories,
            ), 
            state
          );
        }
      ),
      GoRoute(
        path: 'detail',
        pageBuilder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final item = extra['item'];
          return buildPageWithSlideTransition(
            DetailRealEstatePage(
              realEstate: item
            ), 
            state
          );
        }
      ),
    ],
  );
}
