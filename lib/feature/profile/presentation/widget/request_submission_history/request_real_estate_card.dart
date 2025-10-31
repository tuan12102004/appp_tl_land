import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/format_date_time.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RequestRealEstateCard extends StatelessWidget {
  final RealEstateEntity realEstateCard;
  const RequestRealEstateCard({
    super.key,
    required this.realEstateCard,
  });

  void _onOpenDetail(BuildContext context) {
    context.push('/home/detail', extra: {'item': realEstateCard});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onOpenDetail(context),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: BackgroundColors.backgroundBrandTertiary,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              realEstateCard.name ?? '',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    color: TextColors.textDefaultPrimary,
                  ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Ngày gửi: ${formatDate(realEstateCard.createdAt ?? DateTime.now())}",
                    style: Theme.of(context).textTheme.bodyMedium),
                CustomAdaptiveButton(
                  onPressed: () => _onOpenDetail(context),
                  text: "Chi tiết",
                  radius: 50.r,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
