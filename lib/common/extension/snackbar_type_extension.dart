import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../enums/snackbar_type.dart';

extension SnackbarTypeExtension on SnackbarType {
  // Get primary color
  Color get primaryColor {
    switch (this) {
      case SnackbarType.success:
        return AppColors.stateColorsSuccess;
      case SnackbarType.error:
        return AppColors.stateColorsError;
      case SnackbarType.warning:
        return AppColors.stateColorsWarning;
      case SnackbarType.info:
        return AppColors.stateColorsInfo;
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
    }
  }
}
