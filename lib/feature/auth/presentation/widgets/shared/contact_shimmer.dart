import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactSignupShimmer extends StatelessWidget {
  const ContactSignupShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildShimmerIcon(),
          SizedBox(width: 12.w),
          _buildShimmerIcon(),
          SizedBox(width: 12.w),
          _buildShimmerIcon(),
          SizedBox(width: 12.w),
          _buildShimmerIcon(),
        ],
      ),
    );
  }

  Widget _buildShimmerIcon() {
    return Container(
      width: 50.w, 
      height: 50.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BackgroundColors.backgroundDefaultPrimary, 
      ),
    );
  }
}