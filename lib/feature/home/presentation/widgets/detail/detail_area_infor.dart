import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailAreaInfor extends StatelessWidget {
  final PropertyInfoEntity item;
  const DetailAreaInfor({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Thông tin',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 17.sp,
          ),
        ),
        SizedBox(height: 12.h),
        _buildLineInfoArea(
          context: context,
          icon: Icons.straighten,
          title: 'Diện tích: ${item.area} m²',
        ),
        SizedBox(height: 8.h),
        _buildLineInfoArea(
          context: context,
          icon: Icons.bed_outlined,
          title: 'Phòng ngủ: ${item.bedrooms}',
        ),
        SizedBox(height: 8.h),
        _buildLineInfoArea(
          context: context,
          icon: Icons.bathroom_outlined,
          title: 'Nhà vệ sinh: ${item.bathrooms}',
        ),
      ],
    );
  }

  Widget _buildLineInfoArea({
    required BuildContext context,
    required IconData icon,
    required String title, 
  }){
    return Padding(
      padding: EdgeInsets.all(8.w),
      child: Row(
        children: [
          Icon(
            icon,
            size: 24.sp,
            color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
          ),
          SizedBox(width: 4.h),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 17.sp,
              color: TextColors.textDefaultSecondary.withValues(alpha: 0.5)
            ),
          ),
        ],
      ),
    );
  }
}