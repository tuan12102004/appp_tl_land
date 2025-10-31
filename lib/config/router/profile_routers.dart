import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileRouters {
  ProfileRouters._();

  static final GoRoute routers = GoRoute(
      path: '/profile',
      pageBuilder: (context, state) =>
          buildPageWithSlideTransition(SizedBox(), state),
      routes: [
        GoRoute(
            path: 'change-info',
            pageBuilder: (context, state) {
              {
                return buildPageWithSlideTransition(
                    BlocProvider(
                      create: (context) => sl<ProfileBloc>(),
                      child: ChangeImformationPage(),
                    ),
                    state);
              }
            }),
        GoRoute(
            path: 'about-us',
            pageBuilder: (context, state) {
              {
                return buildPageWithSlideTransition(AboutUsPage(), state);
              }
            }),
        GoRoute(
            path: 'change-pass',
            pageBuilder: (context, state) {
              {
                return buildPageWithSlideTransition(
                    ChangePasswordPage(), state);
              }
            }),
        GoRoute(
            path: 'contact-support',
            pageBuilder: (context, state) {
              {
                return buildPageWithSlideTransition(
                    ContactSupportPage(), state);
              }
            }),
        GoRoute(
            path: 'support-detail',
            pageBuilder: (context, state) {
              final extraData = state.extra as Map<String, dynamic>;
              final item = extraData['item'];
              return buildPageWithSlideTransition(
                  SupportDetailPage(item: item), state);
            }),
        GoRoute(
            path: 'policy',
            pageBuilder: (context, state) {
              {
                return buildPageWithSlideTransition(PolicyPage(), state);
              }
            }),
        GoRoute(
            path: 'request-submission',
            pageBuilder: (context, state) {
              {
                return buildPageWithSlideTransition(
                    RequestSubmissionHistoryPage(), state);
              }
            }),
      ]);
}
