import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/image_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSearch extends StatelessWidget {
  final String status;
  final String name;
  final int price;
  final String category;
  final String address;
  final List<String> images;

  const ItemSearch({
    super.key,
    required this.status,
    required this.name,
    required this.price,
    required this.category,
    required this.address,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundBrandTertiary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hiển thị ảnh đầu tiên
                ImageGridView(images: images),

                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Danh mục',
                      style: TextStyle(
                        color: const Color(0xFF179BE0),
                        fontSize: 17.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.29.sp,
                        letterSpacing: -0.43.sp,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: BasicColors.blueZodiac500,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.31.sp,
                          letterSpacing: -0.31.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8.h,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black /* 🟦-Text-Default-Primary */,
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.25.sp,
                        letterSpacing: -0.45.sp,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          '${price.toString()} VND',
                          style: TextStyle(
                            color: BasicColors.blueZodiac500,
                            fontSize: 22.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.27.sp,
                            letterSpacing: -0.26.sp,
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Icon(Icons.window_outlined,
                            size: 16.sp,
                            color: Colors.black.withValues(alpha: 0.50)),
                        SizedBox(width: 3.w),
                        Text(
                          category,
                          style: TextStyle(
                            color: Colors.black.withValues(
                                alpha: 0.50) /* 🟦-Text-Default-Secondary */,
                            fontSize: 15.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.33.sp,
                            letterSpacing: -0.23.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            size: 21.sp,
                            color: Colors.black.withValues(alpha: 0.50)),
                        SizedBox(width: 3.w),
                        Text(
                          address,
                          style: TextStyle(
                            color: Colors.black.withValues(
                                alpha: 0.50) /* 🟦-Text-Default-Secondary */,
                            fontSize: 16.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.31.sp,
                            letterSpacing: -0.31.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
