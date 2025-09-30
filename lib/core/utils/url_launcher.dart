import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(BuildContext context, Uri url) async {
  if (await canLaunchUrl(url)) {
    try {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      if (context.mounted) {
        showAppSnackbar(context,
            content: 'Đã xảy ra lỗi. Vui lòng thử lại.',
            snackbarType: SnackbarType.error);
      }
    }
  } else {
    debugPrint('Không thể mở URL: $url');
    if (context.mounted) {
      showAppSnackbar(context,
          content: 'Không thể mở URL: $url', snackbarType: SnackbarType.error);
    }
  }
}
