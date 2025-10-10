import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: Image.asset(
              AppImages.defaultAvatar,
              fit: BoxFit.contain,
              height: 90.h,
              width: 90.w,
            ),
          ),
          Positioned(
            bottom: 0.h,
            right: 0.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: BackgroundColors.backgroundButtonPrimary,
              ),
              child: Padding(
                padding: EdgeInsets.all(7.r),
                child: Icon(
                  Icons.edit,
                  size: 20.sp,
                  color: IconColors.iconButtonPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}