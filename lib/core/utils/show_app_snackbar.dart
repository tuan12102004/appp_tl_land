import 'package:app_tl_land_3212/common/enums/snackbar_type.dart';
import 'package:app_tl_land_3212/common/extension/snackbar_type_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

Future<void> showAppSnackbar(
  BuildContext context, {
  SnackbarType snackbarType = SnackbarType.success,
  String? content,
}) async {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: BackgroundColors.backgroundDefaultPrimary,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(width: 1.w, color: snackbarType.primaryColor),
      ),
      margin: EdgeInsets.all(16.w),
      elevation: 0,
      content: Row(
        spacing: 12.w,
        children: [
          // Icon
          Icon(
            snackbarType.icon,
            size: 22.sp,
            color: snackbarType.primaryColor,
          ),

          // Content
          Expanded(
            child: Text(
              content ?? "Thông báo",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: snackbarType.primaryColor,
              ),
            ),
          ),
        ],
      ),
      duration: Duration(seconds: 3),
    ),
  );
}
