import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DetailRealEstateShimmer extends StatelessWidget {
  const DetailRealEstateShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: BasicColors.gray300,
      highlightColor: BasicColors.gray100,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 198.h,
              margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: BackgroundColors.backgroundDefaultPrimary,
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              height: 20.h,
              width: 200.w,
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              color: BackgroundColors.backgroundDefaultPrimary,
            ),
            SizedBox(height: 12.h),
            ...List.generate(
              3,
              (i) => Container(
                height: 16.h,
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                color: BackgroundColors.backgroundDefaultPrimary
              ),
            ),
            SizedBox(height: 16.h),
            ...List.generate(
              3,
              (i) => Container(
                height: 60.h,
                margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: BackgroundColors.backgroundDefaultPrimary,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
