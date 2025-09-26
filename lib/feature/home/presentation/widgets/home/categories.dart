import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/navigation_helper.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Categories extends StatefulWidget {
  final List<CategoriesEntity> categories;
  const Categories({super.key, required this.categories});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<CategoriesEntity> categories = [];

  @override
  void initState() {
    categories = widget.categories.take(widget.categories.length >= 8 ? 8: widget.categories.length).toList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(), 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, 
        childAspectRatio: 0.78.w, 
        crossAxisSpacing: 7.h,
        mainAxisSpacing: 7.w,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        // custom phần tử cuối
        if (index == categories.length - 1) {
          return GestureDetector(
            onTap: () {
              // TODO:Qua trang tất cả danh mục
              context.push(
                '/home/categories',
                extra: {
                  'categories': widget.categories
                }
              );
            },
            child: Padding(
              padding: EdgeInsetsGeometry.all(6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.maps_home_work_outlined, size: 68.sp, color: IconColors.iconBrandPrimary),
                  SizedBox(height: 6.h),
                  Text(
                    'Xem thêm',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 13.sp
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        // các ô còn lại
        return GestureDetector(
          onTap: () {
            // TODO: Qua trang search
            goToSearch(context);
          },
          child: Padding(
            padding: EdgeInsetsGeometry.all(6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(
                    category.image,
                    height: 68.h,
                    width: 68.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  category.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
