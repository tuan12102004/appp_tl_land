import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CardShimmer extends StatelessWidget {
  const CardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Expanded(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) => _buildShimmerCard(),
        ),
      ),
    );
  }

  Widget _buildShimmerCard() {
    return Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: BackgroundColors.backgroundDefaultPrimary,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon và Timestamp
              Row(
                children: [
                  Container(
                    height: 20.sp,
                    width: 20.sp,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  const ShimmerBox(flex: 1, widthFactor: 0.5),
                ],
              ),
              SizedBox(height: 8.h),

              // Title
              const Row(
                children: [
                  ShimmerBox(flex: 1, widthFactor: 1.0),
                ],
              ),
              SizedBox(height: 6.h),

              // Message
              const Row(
                children: [
                  ShimmerBox(flex: 1, widthFactor: 0.7),
                ],
              ),
            ],
          ),
        ));
  }
}
