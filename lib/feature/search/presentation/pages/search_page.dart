import 'package:app_tl_land_3212/common/widgets/app_main_app_bar.dart';
import 'package:app_tl_land_3212/common/widgets/custom_search_bar.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/custom_icon_button.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/item_search.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/unfocus_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final List<Map<String, dynamic>> datas = List.generate(10, (index) {
    return {
      'status': 'Đang bán',
      'name':
          '570tr nhận nhà trước tết, HTLS 0% 18 tháng, căn 1PN+1 full đồ S2.17 Vinhhomes',
      'price': 19000000 + index * 1000000,
      'category': 'Hướng Đông',
      'address': 'Gia Lâm, Hà Nội',
      'image': List.generate(
        index + 1, // số lượng ảnh sẽ bằng index + 1
        (i) =>
            'https://blog.onhome.asia/hs-fs/hubfs/1000%20m%E1%BA%ABu%20nh%C3%A0%20%C4%91%E1%BA%B9p/M%E1%BB%9Bi%20-%20M%E1%BA%ABu%20nh%C3%A0%20%C4%91%E1%BA%B9p/M%20-%20Nh%C3%A0%20m%C3%A1i%20Th%C3%A1i/2%20t%E1%BA%A7ng/nha-mai-thai-2-tang-14.jpg?width=1000&height=657&name=nha-mai-thai-2-tang-14.jpg',
      ),
    };
  }).toList();

  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusScaffold(
      appBar: AppMainAppBar(
        title: 'Tìm kiếm',
        automaticallyImplyLeading: true,
        showNotificationIcon: true,
        showFilterIcon: true,
        badgeCount: 1,
        showLargeTitle: false,
        showBorder: true,
        onNotificationPressed: () => context.push('/noti'),
      ),
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              Row(
                spacing: 12.w,
                children: [
                  Expanded(
                    child: CustomSearchBar(
                      controller: _searchController,
                      hintText: 'Tìm tên bất động sản',
                    ),
                  ),
                  CustomIconButton(
                    onPressed: () {
                      context.push('/search/filter');
                    },
                    icon: Icons.filter_alt,
                    label: 'Lọc',
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(vertical: 8.h),
                    child: CustomIconButton(
                      label: "Sắp xếp theo giá",
                      icon: Icons.north,
                      iconPosition: IconPosition.right,
                      backgroundColor: AppColors.backgroundDefaultSecondary,
                      textColor: Colors.black,
                      iconColor: Colors.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (_, __) => SizedBox(
                    height: 16.h,
                  ),
                  itemCount: datas.length,
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  itemBuilder: (context, index) {
                    final data = datas[index];
                    return ItemSearch(
                      status: data['status'],
                      name: data['name'],
                      price: data['price'],
                      category: data['category'],
                      address: data['address'],
                      images: List<String>.from(
                          data['image']), // ép kiểu sang List<String>
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
