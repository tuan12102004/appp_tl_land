// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/converter.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';

class DetailInfor extends StatelessWidget {
  final RealEstateEntity item;
  const DetailInfor({
    super.key,
    required this.item,
  });

  void _onGoogleMap(){
    // TODO: Mở google map theo địa chỉ
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Categpory
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Danh mục',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 17.sp,
                color: TextColors.textBrandPrimary
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: BasicColors.blueZodiac500,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                child: Text(
                  item.status,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                    color: TextColors.textBrandOnbrand
                  ),
                ),
              ),
            ),
          ]
        ),
        SizedBox(height: 12.h),
        // Title
        Text(
          item.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        SizedBox(height: 12.h),
        // Price
        Text(
          '${togglePriceWithDot(item.price)} VND',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
            color: TextColors.textBrandPrimary
          ),
        ),
        SizedBox(height: 12.h),
        // Address
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                item.address,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              height: 34.h,
              width: 34.w,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: BackgroundColors.backgroundButtonPrimary,
                  shape: BoxShape.circle
                ),
                child: IconButton(
                  padding: EdgeInsets.all(7.w),
                  icon: Icon(Icons.directions,),
                  iconSize: 20.sp,
                  color: IconColors.iconButtonPrimary,
                  onPressed: _onGoogleMap,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
