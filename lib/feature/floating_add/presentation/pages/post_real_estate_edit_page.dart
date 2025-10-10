import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/enums/real_estate_state_type.dart';
import 'package:app_tl_land_3212/common/widgets/custom_bottom_bar_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/show_app_snackbar.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/address_section.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/advanced_info_section.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/basic_info_section.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/category_selector.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/decription_selector.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/owner_section.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/post_real_estate/status_selector.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PostRealEstateEditPage extends StatefulWidget {
  final RealEstateEntity realEstate;
  const PostRealEstateEditPage({super.key, required this.realEstate});

  @override
  State<PostRealEstateEditPage> createState() => _PostRealEstateEditPageState();
}

class _PostRealEstateEditPageState extends State<PostRealEstateEditPage> {
  // Fake dữ liệu
  final List<String> _category = ["Nhà đất", "Căn hộ", "Đất nền","Chung cư"];
  final List<String> _status = ["Cho thuê", "Chưa bán"];
  final List<OwnerEntity> _owners = List.generate(
    4,
    (index) => OwnerEntity(
      name: 'Nguyễn Văn ${String.fromCharCode(65 + index)}',
      phone: '03333${index.toString().padLeft(5, '0')}',
      email: 'user$index@gmail.com',
      address: '${index + 100}/${index + 20} Đường ABC, Phường ${index + 1}, TP. Tây Ninh',
      startDate: DateTime(2023, 1 + (index % 12), 1),
      endDate: DateTime(2026, 1 + (index % 12), 1),
    ),
  );
  final List<String> _city = ["Hà Nội", "Hồ Chí Minh", "Đà Nẵng", "Cần thơ", "Đà Lạt", "Hà Tĩnh"];
  final List<String> _ward = ["Phường 1", "Phường 2", "Phường 3", "Phường 4", "Phường 5", "Phường 6"];

  // Dữ liệu cố định 
  final List<String> _directions = [
    "Đông", "Tây", "Nam", "Bắc"
    "Đông Bắc", "Tây Bắc", "Đông Nam", "Tây Nam",
  ];

  String? selectedValueCategory;
  String? selectedValueStatus;
  String? selectedValueCity;
  String? selectedValueWard;
  String? selectedValueDirection;
  int quatityToilet = 0;
  int quatityBedroom = 0;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _addressCon = TextEditingController();
  final TextEditingController _nameCon = TextEditingController();
  final TextEditingController _priceCon= TextEditingController();
  final TextEditingController _acreageCon = TextEditingController();
  final TextEditingController _descriptionCon = TextEditingController();

  final FocusNode _addressNode = FocusNode();
  final FocusNode _nameNode = FocusNode();
  final FocusNode _priceNode = FocusNode();
  final FocusNode _acreageNode = FocusNode();
  final FocusNode _descriptionNode = FocusNode();

  @override
  void dispose() {
    _addressCon.dispose();
    _nameCon.dispose();
    _priceCon.dispose();
    _acreageCon.dispose();
    _descriptionCon.dispose();

    _addressNode.dispose();
    _nameNode.dispose();
    _priceNode.dispose();
    _acreageNode.dispose();
    _descriptionNode.dispose();

    super.dispose();
  }

  // TODO: Get list owner for show UI main
  String getListOwner(List<OwnerEntity> parties) {
    String result = '';
    for (int i = 0; i < parties.length; i++) {
      result += parties[i].name;
      if (i < parties.length - 1) {
        result += ', ';
      }
    }
    return result;
  }

  // TODO: Get full address for show UI main
  String? getFullAddress() {
    if (selectedValueCity == null ||
        selectedValueWard == null ||
        _addressCon.text.trim().isEmpty) {
      return null;
    }
    return '${_addressCon.text.trim()}, ${selectedValueWard!}, Thành phố ${selectedValueCity!}';
  }

  // TODO: Open add owner page
  void _onOpenAddOwner(){
    context.push(
      '/post/add-owner'
    );
  }


  // TODO: Open edit owner
  void _onOpenEditOwners(OwnerEntity item) async {
    final updatedOwner = await context.push<OwnerEntity>(
      '/post/edit-owner',
      extra: {
        'item': item
      }
    );
    if (updatedOwner != null) {
      final index = _owners.indexWhere((e) => e == item);
      if (index != -1) {
        setState(() {
          _owners[index] = updatedOwner;
        });
      }
    }
  }

  // TODO: Open description page
  void _openDescriptionPage() async {
    final description = await context.push<String>(
      '/post/add-decription',
      extra: {
        'controller': _descriptionCon
      }
    );

    if (description != null) {
      setState(() {
        _descriptionCon.text = description;
      });
    }
  }

  // TODO: Open add images
  void _onOpenAddImages() {
    if (selectedValueCategory == null) {
      showAppSnackbar(
        context,
        snackbarType: SnackbarType.error,
        content: "Vui lòng chọn danh mục BĐS",
      );
      return;
    }
    if (selectedValueStatus == null) {
      showAppSnackbar(
        context,
        snackbarType: SnackbarType.error,
        content: "Vui lòng chọn trạng thái BĐS",
      );
      return;
    }
    String addressType = "";
    if (selectedValueCity == null || selectedValueWard == null) {
      if(selectedValueWard == null) {
        addressType = "phường";
      } else {
        addressType = "thành phố";
      }
      showAppSnackbar(
        context,
        snackbarType: SnackbarType.error,
        content: "Vui lòng nhập đầy đủ thông tin $addressType",
      );
      return;
    }
    if (selectedValueDirection == null) {
      showAppSnackbar(
        context,
        snackbarType: SnackbarType.error,
        content: "Vui lòng chọn hướng của BĐS",
      );
      return;
    }
    if (_descriptionCon.text.trim().isEmpty) {
      showAppSnackbar(
        context,
        snackbarType: SnackbarType.error,
        content: "Vui lòng nhập mô tả BĐS",
      );
      return;
    }
    if (_formKey.currentState?.validate() == true) {
      FocusScope.of(context).unfocus();
      final realEstateEntity = RealEstateEntity(
        id: DateTime.now().millisecondsSinceEpoch,
        title: _nameCon.text.trim(),
        category: selectedValueCategory!,
        status: selectedValueStatus!,
        state: RealEstateStateType.pedding.name,
        price: int.tryParse(_priceCon.text.trim()) ?? 0,
        address: getFullAddress()!,
        images: [], // sẽ thêm ở màn tiếp theo
        direction: selectedValueDirection!,
        info: PropertyInfoEntity(
          area: double.tryParse(_acreageCon.text.trim()) ?? 0,
          bedrooms: quatityBedroom,
          bathrooms: quatityToilet,
        ),
        ownerA: _owners,
        description: _descriptionCon.text.trim(),
        createdAt: DateTime.now(),
      );
      context.push(
        '/post/add-images',
        extra: {
          'realEstateEntity' : realEstateEntity
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : CustomAppbarSub(
        titleLeading: 'Đăng tin',
      ),
      body: UnfocusWidget(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: BackgroundColors.backgroundButtonTertiary.withValues(alpha: 0.04),
          ),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(16.w),
                child: Column(
                  spacing: 16.h,
                  children: [
                    // TODO: Category real estate
                    CategorySelector(
                      selectedValueCategory: selectedValueCategory,
                      categories: _category,
                      onChanged: (value) => setState(() {
                        selectedValueCategory = value;
                      }),
                    ),
          
                    // TODO: Status
                    StatusSelector(
                      selectedValueStatus: selectedValueStatus,
                      statusList: _status,
                      onChanged: (value) => setState(() {
                        selectedValueStatus = value;
                      }),
                    ),
          
                    // TODO: Owner
                    OwnerSection(
                      owners: _owners,
                      onAddOwner: _onOpenAddOwner,
                      onEditOwner: _onOpenEditOwners,
                    ),
          
                    // TODO: Address
                    AddressSection(
                      cities: _city,
                      wards: _ward,
                      selectedCity: selectedValueCity,
                      selectedWard: selectedValueWard,
                      addressCon: _addressCon,
                      addressNode: _addressNode,
                      onCityChanged: (value) {
                        setState(() { selectedValueCity = value; });
                      },
                      onWardChanged: (value) {
                        setState(() { selectedValueWard = value; });
                      },
                      onAddressChanged: (fullAddress) {
                        setState(() {});
                      },
                    ),
                    
                    // TODO: Basic info
                    BasicInfoSection(
                      nameCon: _nameCon,
                      nameNode: _nameNode,
                      addressCon: _addressCon,
                      addressNode: _addressNode,
                      priceCon: _priceCon,
                      priceNode: _priceNode,
                      directions: _directions,
                      selectedDirection: selectedValueDirection,
                      onDirectionChanged: (value) {
                        setState(() {
                          selectedValueDirection = value;
                        });
                      },
                    ),
          
                    // TODO: Advanced info
                    AdvancedInfoSection(
                      acreageCon: _acreageCon,
                      acreageNode: _acreageNode,
                      quantityBedroom: quatityBedroom,
                      quantityToilet: quatityToilet,
                      onBedroomChanged: (val) {
                        setState(() => quatityBedroom = val);
                      },
                      onToiletChanged: (val) {
                        setState(() => quatityToilet = val);
                      },
                    ),
                    // TODO: Decription 
                    DescriptionSelector(
                      descriptionController: _descriptionCon,
                      descriptionFocusNode: _descriptionNode,
                      onTapOpenPage: _openDescriptionPage,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 40.h),
        child: CustomBottomBarButton(
          onPressed: (){
            // TODO: Open add images
            _onOpenAddImages();
          }, 
          title: 'Tiếp tục', 
          backgroundColor: BackgroundColors.backgroundBrandPrimary,
          isBorderTop: false,
          isBoxShadowTop: false,
        ),
      ),
    );
  }
}