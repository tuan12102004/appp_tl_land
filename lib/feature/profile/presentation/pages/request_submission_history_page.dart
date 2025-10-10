import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/request_submission_history/request_real_estate_card.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/request_submission_history/request_status_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestSubmissionHistoryPage extends StatefulWidget {
  const RequestSubmissionHistoryPage({super.key});

  @override
  State<RequestSubmissionHistoryPage> createState() => _RequestSubmissionHistoryPageState();
}

class _RequestSubmissionHistoryPageState extends State<RequestSubmissionHistoryPage> {
  // Fake data
  // List Real Estate
  final List<RealEstateEntity> realEstates = List.generate(
    15,
    (index) => RealEstateEntity(
      id: index,
      title:
          'Căn hộ số $index - Nhận nhà ngay, hỗ trợ vay 0% lãi suất 18 tháng',
      category: 'Danh mục',
      status: index % 2 == 0 ? 'Đang bán' : 'Cho thuê',
      state: index < 3 ? 'Chờ duyệt' : (index < 7 ? 'Đã duyệt' : "Từ chối"),
      price: 10 + (index * 5),
      address:'${10 + index}/23 Đinh Trọng Phúc, Quận ${index + 1}, TP. Hồ Chí Minh',
      images: [
        SliderEntity(image: AppImages.banner1),
        SliderEntity(image: AppImages.banner2),
        SliderEntity(image: AppImages.banner3),
        SliderEntity(image: AppImages.banner4),
      ],
      direction: 'Nam',
      info: PropertyInfoEntity(
        area: 40 + index.toDouble(),
        bedrooms: 2 + (index % 3),
        bathrooms: 1 + (index % 2),
      ),
      ownerA: List.generate(
        4,
        (index) => OwnerEntity(
          name: 'Nguyễn Văn ${String.fromCharCode(65 + index)}',
          phone: '03333${index.toString().padLeft(5, '0')}',
          email: 'user$index@gmail.com',
          address: '${index + 100}/${index + 20} Đường ABC, Phường ${index + 1}, TP. Tây Ninh',
          startDate: DateTime(2023, 1 + (index % 12), 1),
          endDate: DateTime(2026, 1 + (index % 12), 1),
        ),
      ),
      description: '''
        ⚜️ Căn hộ số $index, diện tích ${40 + index}m²  
        ⚜️ Kết cấu: ${2 + (index % 3)} phòng ngủ, ${1 + (index % 2)} WC, bếp, phòng khách  
        ⚜️ Vị trí: gần chợ, trường học, siêu thị  
        ⚜️ Căn hộ số $index, diện tích ${40 + index}m²  
        ⚜️ Kết cấu: ${2 + (index % 3)} phòng ngủ, ${1 + (index % 2)} WC, bếp, phòng khách  
        ⚜️ Vị trí: gần chợ, trường học, siêu thị  
        ⚜️ Căn hộ số $index, diện tích ${40 + index}m²  
        ⚜️ Kết cấu: ${2 + (index % 3)} phòng ngủ, ${1 + (index % 2)} WC, bếp, phòng khách  
        ⚜️ Vị trí: gần chợ, trường học, siêu thị  
        ⚜️ Căn hộ số $index, diện tích ${40 + index}m²  
        ⚜️ Kết cấu: ${2 + (index % 3)} phòng ngủ, ${1 + (index % 2)} WC, bếp, phòng khách  
        ⚜️ Vị trí: gần chợ, trường học, siêu thị  
        🎁 Tặng full nội thất cao cấp  

        Giá chỉ từ ${100 + index * 50} triệu (có thương lượng).
        ''',
      createdAt: DateTime.now().subtract(Duration(days: index * 3)),
    ),
  );
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final realEstatesPending = realEstates.where((element) => element.state.toLowerCase() == 'chờ duyệt').toList();
    final realEstatesApproved = realEstates.where((element) => element.state.toLowerCase() == 'đã duyệt').toList();
    final realEstatesRejected = realEstates.where((element) => element.state.toLowerCase() == 'từ chối').toList();

    return Scaffold(
      backgroundColor: BasicColors.gray50,
      appBar: CustomAppbarSub(
        titleLeading: "Bất động sản của tôi",
      ),
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0),
        child: Column(
          children: [
            // TODO: Tabbar
            RequestStatusTabs(
              selectedIndex: selectedIndex,
              onChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            SizedBox(height: 16.h,),
            // TODO: List real estate
            // Pedding
            if(selectedIndex == 0)...[
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                  itemCount: realEstatesPending.length,
                  itemBuilder: (context, index){
                    if(index == realEstatesPending.length - 1){
                      return Column(
                        children: [
                          RequestRealEstateCard(realEstateEntity: realEstatesPending[index],),
                          SizedBox(height: 16.h,),
                        ],
                      );
                    }
                    return RequestRealEstateCard(realEstateEntity: realEstatesPending[index],);
                  }, 
                ),
              ),
            ],
            // Approved
            if(selectedIndex == 1)...[
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                  itemCount: realEstatesApproved.length,
                  itemBuilder: (context, index){
                    if(index == realEstatesApproved.length - 1){
                      return Column(
                        children: [
                          RequestRealEstateCard(realEstateEntity: realEstatesApproved[index],),
                          SizedBox(height: 16.h,),
                        ],
                      );
                    }
                    return RequestRealEstateCard(realEstateEntity: realEstatesApproved[index],);
                  }, 
                ),
              ),
            ],
            // Reject
            if(selectedIndex == 2)...[
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                  itemCount: realEstatesRejected.length,
                  itemBuilder: (context, index){
                    if(index == realEstatesRejected.length - 1){
                      return Column(
                        children: [
                          RequestRealEstateCard(realEstateEntity: realEstatesRejected[index],),
                          SizedBox(height: 16.h,),
                        ],
                      );
                    }
                    return RequestRealEstateCard(realEstateEntity: realEstatesRejected[index],);
                  }, 
                ),
              ),
            ],
          ]
        ),
      ),
    );
  }
}