import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class FaqsListShimmer extends StatelessWidget {
  const FaqsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => _buildShimmerItem(),
        separatorBuilder: (context, index) => Divider(
          color: BorderColors.borderDefaultDefault.withValues(alpha: 0.3),
          height: 1.h,
          thickness: .3.w,
        ),
      ),
    );
  }

  Widget _buildShimmerItem() {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: BackgroundColors.backgroundDefaultPrimary,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 5.h,
              child:
                  const Row(children: [ShimmerBox(flex: 1, widthFactor: 0.9)])),
          SizedBox(height: 6.h),
          SizedBox(
              height: 5.h,
              child:
                  const Row(children: [ShimmerBox(flex: 1, widthFactor: 0.6)])),
        ],
      ),
    );
  }
}
