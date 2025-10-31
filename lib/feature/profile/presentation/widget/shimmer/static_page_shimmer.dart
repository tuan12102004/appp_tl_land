import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class StaticPageShimmer extends StatelessWidget {
  const StaticPageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 32.h,
                child: const Row(
                    children: [ShimmerBox(flex: 1, widthFactor: 0.7)])),
            SizedBox(height: 16.h),
            _buildDescriptionLines(),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionLines() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(15, (index) {
        final widthFactor =
            (index % 4 == 0) ? 0.6 : ((index % 4 == 2) ? 0.85 : 1.0);
        return Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: SizedBox(
              height: 16.h,
              child: Row(
                  children: [ShimmerBox(flex: 1, widthFactor: widthFactor)])),
        );
      }),
    );
  }
}
