import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/widgets/custom_bottom_bar_button.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/detail/custom_expansion_infor.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/detail/detail_area_infor.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/detail/detail_infor.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/detail/detail_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DetailRealEstatePage extends StatefulWidget {
  final RealEstateEntity realEstate;
  const DetailRealEstatePage({super.key, required this.realEstate});

  @override
  State<DetailRealEstatePage> createState() => _DetailRealEstatePageState();
}

class _DetailRealEstatePageState extends State<DetailRealEstatePage> {  
  bool showAllowner = false;
  bool showAllDescription = false;

  // TODO: Qua trang chỉnh sửa
  void _onOpenEdit() {
    context.push(
      '/post/edit', 
      extra: {
        'realEstate': widget.realEstate,
        'isEdit' : true
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.realEstate;
    final displayList = showAllowner
      ? item.ownerA
      : item.ownerA.take(3).toList();
    return Scaffold(
      appBar: CustomAppbar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: () => context.go('/'),
              child: Icon(
                getAdaptiveBackIcon(context,),
                color: IconColors.iconNavigationBarEnabled,
                size: 20.sp,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              'Chi tiết',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 17.sp,
                color: TextColors.textNavigationBarEnabled
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          // Slider
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: DetailSlider(sliderImages: widget.realEstate.images),
            ),
          ),

          // Detail info
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: DetailInfor(item: item),
            ),
          ),

          // Divider
          SliverToBoxAdapter(
            child: Divider(
              color: BasicColors.gray50,
              thickness: 12.h,
            ),
          ),
          
          // Infor area
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.h),
              child: DetailAreaInfor(item: item.info),
            ),
          ),

          // Divider
          SliverToBoxAdapter(
            child: Divider(
              color: BasicColors.gray50,
              thickness: 12.h,
            ),
          ),

          // Owners
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bên đại diện',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final ownerItem = displayList[index];
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 12.h),
                      child: CustomExpansionInfor(ownerItem: ownerItem),
                    ),
                  ],
                );
              },
              childCount: displayList.length,
            ),
          ),

          // Button show more owners
          if (item.ownerA.length > 3)
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 12.h),
                child: CustomAdaptiveButton(
                  isOpacity: true,
                  width: double.infinity,
                  textColor: TextColors.textButtonPlain,
                  backgroundColor: Colors.transparent,
                  text: showAllowner ? 'Thu gọn' :'Xem thêm',
                  onPressed: () {
                    setState(() {
                      showAllowner = !showAllowner;
                    });
                  },
                ),
              ),
            ),

          // Divider
          SliverToBoxAdapter(
            child: Divider(
              color: BasicColors.gray50,
              thickness: 12.h,
            ),
          ),

          // Description
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mô tả',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.description,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                          ),
                          maxLines: showAllDescription ? null : 10,
                          overflow: showAllDescription ? TextOverflow.visible : TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 12.h),
                        CustomAdaptiveButton(
                          isOpacity: true,
                          width: double.infinity,
                          backgroundColor: Colors.transparent,
                          textColor: TextColors.textButtonPlain,
                          text: showAllDescription ? 'Thu gọn' : 'Xem thêm',
                          onPressed: () {
                            setState(() {
                              showAllDescription = !showAllDescription;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBarButton(
        title: 'Chỉnh sửa',
        backgroundColor: BackgroundColors.backgroundButtonPrimary,
        onPressed: _onOpenEdit
      ),
    );
  }
}