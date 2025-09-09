import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileRouters {
  ProfileRouters._();

  static final GoRoute routers = GoRoute(
    path: '/profile',
    pageBuilder:
        (context, state) => buildPageWithSlideTransition(SizedBox(), state),
    
  );
}
