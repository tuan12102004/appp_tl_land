import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/intro/presentation/pages/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class IntroRouters {
  IntroRouters._();

  static final GoRoute routers = GoRoute(
    path: '/intro',
    pageBuilder: (context, state) => buildPageWithSlideTransition(SizedBox.shrink(), state),
    routes: [
     GoRoute(
        path: 'splash',
        pageBuilder: (context, state) {
          return buildPageWithSlideTransition(
            SplashPage(),
            state,
          );
        },
      ),
    ]
  );
} 