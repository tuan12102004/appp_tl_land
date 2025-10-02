import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/home/categories.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/home/list_type_of_real_estate.dart';
import 'package:app_tl_land_3212/feature/home/presentation/widgets/home/slider_with_dots.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Model
class SliderEntity{
  final String image;

  SliderEntity({required this.image});
}

class CategoriesEntity{
  String image;
  String name;

  CategoriesEntity({required this.image, required this.name});
}

class RealEstateEntity {
  final int id; 
  final String title;
  final String category;
  final String status; 
  final int price;
  final String address;
  final List<String> images;
  final String direction;
  final PropertyInfoEntity info;
  final List<OwnerEntity> ownerA;
  final String description;
  final DateTime createdAt;

  const RealEstateEntity({
    required this.id,
    required this.title,
    required this.category,
    required this.status,
    required this.price,
    required this.address,
    required this.images,
    required this.direction,
    required this.info,
    required this.ownerA,
    required this.description,
    required this.createdAt,
  });
}

class PropertyInfoEntity {
  final double area;
  final int bedrooms;
  final int bathrooms;

  const PropertyInfoEntity({
    required this.area,
    required this.bedrooms,
    required this.bathrooms,
  });
}

class OwnerEntity {
  final String name;
  final String phone;
  final String email;
  final String address;
  final DateTime startDate;
  final DateTime endDate;

  const OwnerEntity({
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
    required this.startDate,
    required this.endDate,
  });

  OwnerEntity copyWith({
    String? name,
    String? phone,
    String? email,
    String? address,
    DateTime? startDate,
    DateTime? endDate,
  }) {
    return OwnerEntity(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Slider fake
  final List<SliderEntity> sliderImages = [
    SliderEntity(image: AppImages.imgRealEstate),
    SliderEntity(image: AppImages.imgRealEstate),
    SliderEntity(image: AppImages.imgRealEstate),
    SliderEntity(image: AppImages.imgRealEstate),
  ];
  // Categories fake
  final List<CategoriesEntity> categories = List.generate(
    15, 
    (index) => CategoriesEntity(image: AppImages.imgRealEstate, name: 'Danh mục $index')
  );
  // List Real Estate
  final List<RealEstateEntity> realEstates = List.generate(
    15,
    (index) => RealEstateEntity(
      id: index,
      title:
          'Căn hộ số $index - Nhận nhà ngay, hỗ trợ vay 0% lãi suất 18 tháng',
      category: 'Danh mục',
      status: index % 2 == 0 ? 'Đang bán' : 'Cho thuê',
      price: 10 + (index * 5),
      address:'${10 + index}/23 Đinh Trọng Phúc, Quận ${index + 1}, TP. Hồ Chí Minh',
      images: [
        AppImages.imgRealEstate,
        AppImages.imgRealEstate,
        AppImages.imgRealEstate,
        AppImages.imgRealEstate,
        AppImages.imgRealEstate
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

  // Funcion
  // See all recently
  void _onSeeAllRecently(){

  }
  // See all propose
  void _onSeeAllPropose(){
    
  }
  // See all recently
  void _onSeeAll(){
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.backgroundButtonTertiary.withValues(alpha: 0.02),
      appBar: CustomAppbar(
        title: Text(
          'TL Land',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w400,
            fontFamily: 'Great Vibes',
            fontSize: 32.sp
          ),
        ),
        isDivider: true
      ),
      body: SafeArea(
        // minimum: EdgeInsets.all(16.w),
        child: RefreshIndicator(
          onRefresh: () async {},
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Slider
                SliderWithDotsInside(
                  sliderImages: sliderImages
                ),
                SizedBox(height: 16.h),
                // Categpory
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Categories(
                    categories: categories
                  ),
                ),
                // Recently
                Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Divider(height: 0.1.h, color: BorderColors.borderSeparatorNonOpaque.withValues(alpha: 0.2)),
                ),
                ListTypeOfRealEstate(
                  title: 'Bạn xem gần đây',
                  realEstateList: realEstates,
                  onSeeAll: _onSeeAllRecently
                ),
                // Propose
                SizedBox(height: 16.h),
                ListTypeOfRealEstate(
                  title: 'Đề xuất',
                  realEstateList: realEstates,
                  onSeeAll: _onSeeAllPropose
                ),
                // All
                SizedBox(height: 16.h),
                ListTypeOfRealEstate(
                  title: 'Tất cả BĐS',
                  realEstateList: realEstates,
                  onSeeAll: _onSeeAll
                ),
                SizedBox(height: 32.h),
              ],
            ),
          ),
        ),
      )
    );
  }
}
