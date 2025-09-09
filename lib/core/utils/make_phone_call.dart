import 'package:app_tl_land_3212/common/enums/snackbar_type.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> makePhoneCall(
  BuildContext context, {
  required String phoneNumber,
}) async {
  try {
    final Uri phoneUrl = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneUrl)) {
      await launchUrl(phoneUrl);
    } else {
      if (context.mounted) {
        showAppSnackbar(
          context,
          content: "Gọi điện thất bại",
          snackbarType: SnackbarType.error,
        );
      }
    }
  } catch (e) {
    if (context.mounted) {
      showAppSnackbar(
        context,
        content: "Gọi điện thất bại",
        snackbarType: SnackbarType.error,
      );
    }
  }
}
