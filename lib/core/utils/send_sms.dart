import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> sendSMS(
  BuildContext context, {
  required String phoneNumber,
  required String message,
}) async {
  try {
    final Uri smsUrl = Uri(
      scheme: 'sms',
      path: phoneNumber,
      queryParameters: {'body': message},
    );
    if (await canLaunchUrl(smsUrl)) {
      await launchUrl(smsUrl);
    } else {
      if (context.mounted) {
        showAppSnackbar(
          context,
          content: "Gửi tin nhắn thất bại",
          snackbarType: SnackbarType.error,
        );
      }
    }
  } catch (e) {
    if (context.mounted) {
      if (context.mounted) {
        showAppSnackbar(
          context,
          content: "Gửi tin nhắn thất bại",
          snackbarType: SnackbarType.error,
        );
      }
    }
  }
}
