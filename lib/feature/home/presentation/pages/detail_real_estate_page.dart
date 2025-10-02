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
  final RealEstateEntity item;
  const DetailRealEstatePage({super.key, required this.item});

  @override
  State<DetailRealEstatePage> createState() => _DetailRealEstatePageState();
}

class _DetailRealEstatePageState extends State<DetailRealEstatePage> {  
  bool showAllowner = false;
  bool showAllDecription = false;

  // Mở trang chỉnh sửa
  void _onOpenEdit() {
    // TODO: Qua trang chỉnh sửa
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
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
              onTap: () => context.pop(),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Slider
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: DetailSlider(sliderImages: widget.item.images),
              ),
              // Detail info
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: DetailInfor(item: item),
              ),
              SizedBox(
                height: 12.h,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: BasicColors.gray50
                  )
                ),
              ),
              // Infor area
              Padding(
                padding: EdgeInsets.all(16.h),
                child: DetailAreaInfor(
                  item: item.info,
                ),
              ),
              
              SizedBox(
                height: 12.h,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: BasicColors.gray50
                  )
                ),
              ),
              // Infor custom
              Padding(
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
                    SizedBox(height: 12.h),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) => SizedBox(height: 12.h,),
                      itemCount: displayList.length,
                      itemBuilder: (context, index) {
                        final ownerItem = displayList[index];
                        return CustomExpansionInfor(
                          ownerItem: ownerItem,
                        );
                      }
                    ),
                     // Buttom see more
                    if (item.ownerA.length > 3) ...[
                      SizedBox(height: 12.h),
                      CustomAdaptiveButton(
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
                    ],
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: BasicColors.gray50
                  )
                ),
              ),
              Padding(
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
                    SizedBox(
                      height: showAllDecription ? null : 320.h,
                      child: Text(
                        item.description,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                        maxLines: showAllDecription ? null : 30, 
                        overflow: showAllDecription ? TextOverflow.visible : TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    CustomAdaptiveButton(
                      isOpacity: true,
                      width: double.infinity,
                      backgroundColor: Colors.transparent,
                      textColor: TextColors.textButtonPlain,
                      text: showAllDecription ? 'Thu gọn' : 'Xem thêm',
                      onPressed: (){
                        setState(() {
                          showAllDecription = !showAllDecription;
                        });
                      }, 
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBarButton(
        title: 'Chỉnh sửa',
        backgroundColor: BackgroundColors.backgroundButtonPrimary,
        onPressed: _onOpenEdit
      ),
    );
  }
}