import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension BoolExtension on bool {
  // Get iOS back icon
  Icon get getIOSBackIcon =>
      this
          ? Icon(
            Icons.arrow_back_ios,
            size: 22.sp,
            color: AppColors.primary,
          )
          : Icon(Icons.arrow_back, size: 22.sp, color: AppColors.primary);
}
