import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CatetgoryShimmer extends StatelessWidget {
  const CatetgoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: BasicColors.gray300,
      highlightColor: BasicColors.gray100,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 8, 
        separatorBuilder: (context, index) => Divider(
          height: 0.1.h,
          color: BasicColors.gray200,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                    color: BackgroundColors.backgroundDefaultPrimary,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Container(
                    height: 16.h,
                    width: double.infinity,
                    color: BackgroundColors.backgroundDefaultPrimary,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
