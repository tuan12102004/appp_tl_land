import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void onLogout(BuildContext context) async {
  final languageCode = sl<SharedPrefsService>().getString(SharedPrefsKey.lang);
  sl<SharedPrefsService>().clearLocalData();
  await resetSl();
  if (context.mounted) {
    // Resave language code
    sl<SharedPrefsService>().saveString(
      SharedPrefsKey.lang,
      languageCode ?? 'vi',
    );

    // Navigate to the login page
    context.go('/auth/login');
  }
}
