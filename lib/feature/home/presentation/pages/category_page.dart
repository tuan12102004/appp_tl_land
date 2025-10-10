import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/get_adaptive_back_icon.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryPage extends StatefulWidget {
  final List<CategoriesEntity> categories;
  const CategoryPage({super.key, required this.categories});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  void _onRealEstateByCategory(CategoriesEntity categories){
    // TODO: Qua trang với danh mục tương ứng
    // context.push(
    //   '/search',
    //   extra: {
    //     'filterCategory': categories.name
    //   }
    // );
  }
  @override
  Widget build(BuildContext context) {
    int quantity = widget.categories.length;
    return Scaffold(
      appBar: CustomAppbar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: () => context.pop(),
              child: Icon(
                getAdaptiveBackIcon(context,),
                color: IconColors.iconNavigationBarEnabled,
                size: 20.sp,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              'Loại bất động sản',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
                color: TextColors.textNavigationBarEnabled
              ),
            ),
          ],
        ),
        centerTitle: false,
        isDivider: true
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {},
          child: quantity == 0
            ? Center(
                child: Text(
                  'Danh mục đang trống',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: TextColors.textDefaultPrimary.withValues(alpha: 0.5)
                  ),
                ),
              )
            : ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 0.1.h, 
                  color: BorderColors.borderSeparatorNonOpaque.withValues(alpha: 0.1)
                );
              },
              itemCount: quantity,
              itemBuilder: (context, index) {
                final category = widget.categories[index];
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w ,vertical: 12.h),
                  child: GestureDetector(
                    onTap: () => _onRealEstateByCategory(category),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: Image.asset(
                            category.image,
                            height: 48.h,
                            width: 48.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8.h),
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
            }
          ),
        ),
      )
    );
  }
}