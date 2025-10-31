import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../enums/snackbar_type.dart';

extension SnackbarTypeExtension on SnackbarType {
  // Get primary color
  Color get primaryColor {
    switch (this) {
      case SnackbarType.success:
        return StateColors.stateColorsSuccess;
      case SnackbarType.error:
        return StateColors.stateColorsError;
      case SnackbarType.warning:
        return StateColors.stateColorsWarning;
      case SnackbarType.info:
        return StateColors.stateColorsInfo;
      case SnackbarType.normal:
        return StateColors.stateColorsNormal;
    }
  }

  // Get icon
  IconData get icon {
    switch (this) {
      case SnackbarType.success:
        return Icons.check_circle_outline;
      case SnackbarType.error:
        return Icons.error_outline;
      case SnackbarType.warning:
        return Icons.warning_outlined;
      case SnackbarType.info:
        return Icons.info_outline;
      case SnackbarType.normal:
        return Icons.info_outline;
    }
  }

  String get status {
    switch (this) {
      case SnackbarType.success:
        return 'thành công';
      case SnackbarType.error:
        return 'không thành công';
      case SnackbarType.warning:
        return 'cảnh báo';
      case SnackbarType.info:
        return '';
      case SnackbarType.normal:
        return '';
    }
  }
}
