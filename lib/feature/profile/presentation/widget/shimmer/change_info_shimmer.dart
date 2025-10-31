import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ChangeInfoShimmer extends StatelessWidget {
  const ChangeInfoShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SafeArea(
        minimum: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AVATAR SHIMMER
              Center(
                child: CircleAvatar(
                  radius: 50.r,
                  backgroundColor: Colors.black.withAlpha(150),
                ),
              ),
              SizedBox(height: 16.h),

              // FULLNAME SHIMMER
              _buildShimmerField(),
              SizedBox(height: 16.h),

              // GENDER & BIRTHDAY SHIMMER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildShimmerField(flex: 1)),
                  SizedBox(width: 12.w),
                  Expanded(child: _buildShimmerField(flex: 1)),
                ],
              ),
              SizedBox(height: 16.h),

              // EMAIL SHIMMER
              _buildShimmerField(),
              SizedBox(height: 16.h),

              // PHONE SHIMMER
              _buildShimmerField(),
              SizedBox(height: 16.h),

              // PROVINCE & WARD SHIMMER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: _buildShimmerField(flex: 1)),
                  SizedBox(width: 12.w),
                  Expanded(child: _buildShimmerField(flex: 1)),
                ],
              ),
              SizedBox(height: 16.h),

              // ADDRESS SHIMMER
              _buildShimmerField(),
              SizedBox(height: 16.h),

              // BUTTON SHIMMER
              SizedBox(
                height: 48.h,
                child: const ShimmerBox(
                    flex: 1, widthFactor: 1.0, alignment: Alignment.center),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerField({int flex = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        // Label Shimmer
        Row(
          children: [
            ShimmerBox(
              flex: 1,
              widthFactor: 0.25,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        // Input Field Shimmer
        SizedBox(
          height: 48.h,
          child: Row(
            children: [
              ShimmerBox(
                flex: flex,
                widthFactor: 1.0,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
