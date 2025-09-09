import 'package:app_tl_land_3212/core/navigation/app_navigations.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRouters {
  AuthRouters._();

  static final GoRoute routers = GoRoute(
    path: '/auth',
    pageBuilder: (context, state) =>
        buildPageWithSlideTransition(SizedBox(), state),
    routes: [
      GoRoute(
        path: 'login',
        pageBuilder: (context, state) =>
            buildPageWithSlideTransition(const LoginPage(), state),
      ),
      GoRoute(
        path: 'signup',
        pageBuilder: (context, state) =>
            buildPageWithSlideTransition(SignupPage(), state),
      ),
      GoRoute(
        path: 'enter-otp',
        pageBuilder: (context, state) {
          final extraData = state.extra is Map<String, dynamic>
              ? state.extra as Map<String, dynamic>
              : {};
          return buildPageWithSlideTransition(
            EnterOtpPage(
              onCompleted: extraData['onCompleted'] ?? (context) {},
              email: extraData['email'] ?? '',
            ),
            state,
          );
        },
      ),
      GoRoute(
        path: 'forgot-pass',
        pageBuilder: (context, state) {
          final extraData = state.extra is Map<String, dynamic>
              ? state.extra as Map<String, dynamic>
              : {};
          return buildPageWithSlideTransition(
            ForgotPassPage(onContinue: extraData['onContinue'] ?? (context, _) {}),
            state,
          );
        },
      ),
      GoRoute(
        path: 'reset-pass',
        pageBuilder: (context, state) {
          final email = state.extra is String ? state.extra as String : '';
          return buildPageWithSlideTransition(
              ResetPassPage(email: email), state);
        },
      ),
    ],
  );
}
