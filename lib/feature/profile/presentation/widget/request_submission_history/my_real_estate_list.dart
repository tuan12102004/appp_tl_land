import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRealEstateList extends StatelessWidget {
  final List<RealEstateEntity> realEstatesList;
  final ScrollController scrollController;
  final bool isLoadMore;

  const MyRealEstateList({
    super.key,
    required this.realEstatesList,
    required this.scrollController,
    this.isLoadMore = false,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = realEstatesList.length + (isLoadMore ? 1 : 0);

    return realEstatesList.isEmpty
        ? InfoEmpty()
        : ListView.separated(
            controller: scrollController,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 16.h,
            ),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              if (index == realEstatesList.length && isLoadMore) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return RequestRealEstateCard(
                realEstateCard: realEstatesList[index],
              );
            },
          );
  }
}
