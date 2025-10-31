import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/noti_pre_module.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationRouters {
  NotificationRouters._();

  static final GoRoute routers = GoRoute(
      path: '/notification',
      pageBuilder: (context, state) =>
          buildPageWithSlideTransition(SizedBox(), state),
      routes: [
        GoRoute(
          path: 'detail',
          pageBuilder: (context, state) {
            final noti = state.extra as NotificationEntity;
            return buildPageWithSlideTransition(
              NotificationDetailPage(notificationEntity: noti),
              state,
            );
          },
        )
      ]);
}
