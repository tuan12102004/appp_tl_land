import 'package:app_tl_land_3212/common/common_enum_module.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openGoogleMap(
  BuildContext context, {
  required double latitude,
  required double longtitude,
}) async {
  try {
    final Uri googleMapUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longtitude',
    );

    if (await canLaunchUrl(googleMapUrl)) {
      await launchUrl(googleMapUrl);
    } else {
      if (context.mounted) {
        showAppSnackbar(
          context,
          content: "Mở bản đồ thất bại",
          snackbarType: SnackbarType.error,
        );
      }
    }
  } catch (e) {
    if (context.mounted) {
      showAppSnackbar(
        context,
        content: "Mở bản đồ thất bại",
        snackbarType: SnackbarType.error,
      );
    }
  }
}
