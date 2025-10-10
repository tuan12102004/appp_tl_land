import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search/item_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchList extends StatelessWidget {
  final List<RealEstateEntity> searchRealEstates;
  final ScrollController scrollController;
  final bool isLoadMore;

  const SearchList({
    super.key,
    required this.searchRealEstates,
    required this.scrollController,
    required this.isLoadMore,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      // luôn chừa một slot ở cuối danh sách
      // itemCount: state.isLastPage ? state.items.length : state.items.length + 1,
      // chỉ cộng thêm một slot vào cuối danh sách khi và chỉ khi BLoC đang ở trạng thái tải thêm dữ liệu. // hasReachedMax: state.isLoadMore
      itemCount: searchRealEstates.length + (isLoadMore ? 1 : 0),
      padding: EdgeInsets.only(bottom: 100.h, top: 8.h),
      itemBuilder: (_, index) {
        if (index < searchRealEstates.length) {
          final data = searchRealEstates[index];
          return ItemSearch(item: data);
        }
        return isLoadMore
            ? const Center(
                child: CustomRiveAnimation(
                    riveAnimationPath: AppRiveAnimations.simpleLoading))
            : const SizedBox.shrink();
      },
    );
  }
}
