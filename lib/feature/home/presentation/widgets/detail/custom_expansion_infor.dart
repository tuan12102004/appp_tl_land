import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/format_date_time.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExpansionInfor extends StatelessWidget {
  final OwnerEntity ownerItem;
  final bool? isEdit;
  final VoidCallback? onEdit;
  const CustomExpansionInfor({
    super.key, 
    required this.ownerItem,
    this.isEdit = false,
    this.onEdit
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: BackgroundColors.backgroundButtonTertiary.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.symmetric(horizontal: 12.w),
          title: Row(
            children: [
              Icon(
                Icons.person,
                size: 24.sp,
                color: AppColors.iconDefaultSecondary.withValues(alpha: 0.5),
              ),
              SizedBox(width: 2.w),
              Text(
                ownerItem.name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              ),
            ],
          ),
          backgroundColor: BackgroundColors.backgroundButtonTertiary.withValues(alpha: 0.04),
          collapsedIconColor: IconColors.iconButtonPlain,
          childrenPadding: EdgeInsets.symmetric(horizontal: 12.w),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          expandedAlignment: Alignment.centerLeft,
          children: [
            SizedBox(height: 8.h),
            _buildLineInfo(
              context: context,
              icon: Icons.phone,
              title: ownerItem.phone ?? 'Chưa có số điện thoại',
            ),
            SizedBox(height: 8.h),
            _buildLineInfo(
              context: context,
              icon: Icons.email,
              title: ownerItem.email ?? 'Chưa có email',
            ),
            SizedBox(height: 8.h),
            _buildLineInfo(
              context: context,
              icon: Icons.place,
              title: ownerItem.phone ?? 'Chưa có địa chỉ',
            ),
            SizedBox(height: 8.h),
            _buildLineInfo(
              context: context,
              icon: Icons.date_range,
              title: '${formatDate(ownerItem.startDate ?? DateTime.now())} - ${formatDate(ownerItem.endDate ?? DateTime.now())}',
            ),
            SizedBox(height: 6.h),
            if(isEdit == true) ...[
              CustomAdaptiveButton(
                text: 'Chỉnh sửa',
                isOpacity: true,
                textColor: TextColors.textButtonPlain,
                backgroundColor: Colors.transparent,
                width: double.infinity,
                onPressed: onEdit ?? (){},
              ),
            ],
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
  Widget _buildLineInfo({
    required BuildContext context,
    required IconData icon,
    required String title, 
  }){
    return Row(
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
          ),
        ),
      ],
    );
  }
}