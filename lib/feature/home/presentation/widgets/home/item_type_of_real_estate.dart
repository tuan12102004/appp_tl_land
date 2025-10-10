import 'dart:ui';

import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemTypeOfRealEstate extends StatelessWidget {
  final RealEstateEntity item;
  const ItemTypeOfRealEstate({
    super.key, 
    required this.item, 
  });

  // Funcion take city
  String takeCity(String address) {
    List<String> city = address.split(', ');
    return '${city[1]}, ${city[2]}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(
        '/home/detail', 
        extra: {
          'item': item
        }
      ),
      child: Card(
        elevation: 0.1.h,
        margin: EdgeInsetsGeometry.only(right: 16.w),
        color: BackgroundColors.backgroundDefaultPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image
                  Stack(
                    children: [
                      Image.asset(
                        item.images.first.image, // Lấy ảnh đầu tiên
                        height: 154.h,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 12.h,
                        left: 12.w,
                        right: 12.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.r),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2.w, 
                              sigmaY: 2.h,
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: BackgroundColors.backgroundDefaultPrimary.withValues(alpha: 0.7),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                                child: Text(
                                  '${item.price} triệu',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.sp,
                                    color: TextColors.textBrandPrimary
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      )
                    ]
                  ),
                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Danh mục',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
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
                              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: TextColors.textBrandOnbrand
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 220.w,
                    child: Text(
                      item.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16.sp,
                        color: IconColors.iconDefaultTertiary.withValues(alpha: 0.30),
                      ),
                      SizedBox(width: 3.w),
                      Text(
                        takeCity(item.address),
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: TextColors.textDefaultSecondary.withValues(alpha: 0.70),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.directions_outlined,
                        size: 16.sp,
                        color: IconColors.iconDefaultTertiary.withValues(alpha: 0.30),
                      ),
                      SizedBox(width: 3.w),
                      Text(
                        'Hướng ${item.direction.toLowerCase()}',
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: TextColors.textDefaultSecondary.withValues(alpha: 0.70),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}