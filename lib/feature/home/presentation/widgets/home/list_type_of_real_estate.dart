import 'dart:ui';

import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/home/item_type_of_real_estate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTypeOfRealEstate extends StatefulWidget {
  final String title;
  final VoidCallback onSeeAll;
  final List<RealEstateEntity> realEstateList;
  const ListTypeOfRealEstate({
    super.key, 
    required this.title, 
    required this.onSeeAll,
    required this.realEstateList
  });

  @override
  State<ListTypeOfRealEstate> createState() => _ListTypeOfRealEstateState();
}

class _ListTypeOfRealEstateState extends State<ListTypeOfRealEstate> {
  @override
  Widget build(BuildContext context) {
    int quatity = widget.realEstateList.length;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp
                ),
              ),
              GestureDetector(
                onTap: widget.onSeeAll,
                child: Text(
                  'Xem tất cả',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: TextColors.textBrandPrimary
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h,),
          SizedBox(
            height: quatity == 0 ? 100.h : 304.h,
            child: quatity == 0
            ? Center(
                child: Text(
                  'Danh sách đang trống',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: TextColors.textDefaultPrimary.withValues(alpha: 0.5)
                  ),
                ),
              )
            : ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              itemCount: quatity,
              itemBuilder: (context, index) {
                final item = widget.realEstateList[index];
                return SizedBox(
                  width: 250.w, 
                  child: ItemTypeOfRealEstate(item: item)
                );
              }
            ),
          )
        ],
      ),
    );
  }
}