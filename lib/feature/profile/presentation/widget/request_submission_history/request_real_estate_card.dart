import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/format_date_time.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RequestRealEstateCard extends StatelessWidget {
  final RealEstateEntity realEstateEntity;
  const RequestRealEstateCard({
    super.key, 
    required this.realEstateEntity,
  });

  void _onOpenDetail(BuildContext context) {
    context.push(
      '/home/detail', 
      extra: {
        'item': realEstateEntity
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onOpenDetail,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: BackgroundColors.backgroundBrandTertiary,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                realEstateEntity.title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600, 
                  fontSize: 17.sp, 
                  color: TextColors.textDefaultPrimary,
                ),
              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ngày gửi: ${formatDate(realEstateEntity.createdAt)}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w400, 
                      fontSize: 15.sp, 
                      color: TextColors.textDefaultPrimary,
                    ),
                  ),
                  CustomAdaptiveButton(
                    onPressed: () => _onOpenDetail,
                    text: "Chi tiết",
                    radius: 50.r,
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  )
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}

