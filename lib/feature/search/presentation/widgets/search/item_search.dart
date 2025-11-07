import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/image_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemSearch extends StatelessWidget {
  final RealEstateEntity item;

  const ItemSearch({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: BackgroundColors.backgroundBrandTertiary,
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
                ImageGridView(images: item.gallery ?? []),

                SizedBox(height: 12.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Danh mục',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: TextColors.textBrandPrimary,
                                  fontWeight: FontWeight.w600,
                                )),
                    Flexible(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: BackgroundColors.backgroundBrandPrimary,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 3.h),
                          child: Text(
                            item.status ?? 'N/A',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: TextColors.textBrandOnbrand,
                                    ),
                          ),
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
                      item.name ?? 'N/A',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(CurrencyFormatter.format(item.price),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: TextColors.textBrandPrimary,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22.sp,
                                )),
                        SizedBox(width: 16.w),
                        Icon(
                          Icons.window_outlined,
                          size: 16.sp,
                          color: IconColors.iconDefaultSecondary,
                        ),
                        SizedBox(width: 3.w),
                        Text(item.direction?.label ?? 'Không xác định',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: TextColors.textDefaultSecondary,
                                )),
                      ],
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        size: 21.sp,
                        color: IconColors.iconDefaultTertiary,
                      ),
                      title: Text(item.address ?? 'Không có địa chỉ',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: TextColors.textDefaultSecondary,
                                  )),
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
