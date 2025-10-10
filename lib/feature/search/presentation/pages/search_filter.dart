import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/enums/validate_type.dart';
import 'package:app_tl_land_3212/common/widgets/app_main_app_bar.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search_widget_module.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SearchFilter extends StatelessWidget {
  final String title;
  final bool isIncrease;
  final String actionLabel;

  final VoidCallback onBottomActionPressed;
  final VoidCallback onBottomResetPressed;

  final TextEditingController minPriceController;
  final TextEditingController maxPriceController;

  final FocusNode minPriceNode;
  final FocusNode maxPriceNode;

  final RangeValues priceRange;
  final String priceUnit;
  final Map<int, String> itemPrices;
  final int selectedPriceUnit;
  final ValueChanged<RangeValues> onPriceRangeChanged;
  final ValueChanged<int?> onPriceUnitChanged;

  final Map<String, bool> statusOptions;
  final Function(Map<String, bool>) onStatusSelected;

  final Map<String, bool> categoryOptions;
  final Function(Map<String, bool>) onCategorySelected;
  final VoidCallback onCategoryActionAll;

  final Map<int, String> provinceOptions;
  final int? selectedProvinceId;
  final Function(int?) onProvinceSelected;

  final Map<int, String> wardOptions;
  final int? selectedWardId;
  final Function(int?) onWardSelected;

  final SelectBloc<int?> provinceBloc;
  final SelectBloc<int?> wardBloc;
  final SelectBloc<int?> priceUnitBloc;

  const SearchFilter({
    super.key,
    required this.title,
    required this.isIncrease,
    required this.onBottomActionPressed,
    required this.onBottomResetPressed,
    required this.minPriceController,
    required this.maxPriceController,
    required this.minPriceNode,
    required this.maxPriceNode,
    required this.statusOptions,
    required this.onStatusSelected,
    required this.categoryOptions,
    required this.onCategorySelected,
    required this.onCategoryActionAll,
    required this.provinceOptions,
    required this.onProvinceSelected,
    required this.wardOptions,
    required this.onWardSelected,
    this.selectedProvinceId,
    this.selectedWardId,
    required this.priceRange,
    required this.priceUnit,
    required this.itemPrices,
    required this.selectedPriceUnit,
    required this.onPriceRangeChanged,
    required this.onPriceUnitChanged,
    required this.actionLabel,
    required this.provinceBloc,
    required this.wardBloc,
    required this.priceUnitBloc,
  });

  String _formatNumber(double number) {
    return NumberFormat('#,##0', 'vi_VN').format(number);
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusScaffold(
      appBar: AppMainAppBar(
        title: title,
        automaticallyImplyLeading: true,
        showNotificationIcon: true,
        badgeCount: 1,
        showLargeTitle: false,
        showBorder: true,
        showCloseWithLabel: true,
        closeLabel: "Bộ lọc",
      ),
      body: SafeArea(
          top: false,
          bottom: false,
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
                horizontal: 16.0.w, vertical: 16.0.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16.h,
                children: [
                  LabelChildFilter(
                    label: 'Tìm khu vực',
                    child: Column(
                      spacing: 12.h,
                      children: [
                        LabelDropdownField(
                          label: 'Thành phố',
                          items: provinceOptions,
                          hintText: 'Chọn thành phố',
                          onChanged: onProvinceSelected,
                          value: selectedProvinceId,
                          selectBloc: provinceBloc,
                        ),
                        LabelDropdownField(
                          label: 'Phường',
                          items: selectedProvinceId == null
                              ? {}
                              : wardOptions,
                          hintText: selectedProvinceId == null
                              ? 'Vui lòng chọn thành phố'
                              : 'Chọn phường',
                          onChanged: (selectedId) {
                            if (selectedProvinceId != null) {
                              onWardSelected(selectedId);
                            }
                          },
                          value: selectedWardId,
                          selectBloc: wardBloc,
                        ),
                      ],
                    ),
                  ),
                  LabelChildFilter(
                    label: 'Trạng thái',
                    child: StatusFilter(
                        options: statusOptions,
                        onSelected: onStatusSelected,
                        maxVisibleItems: 8),
                  ),
                  LabelChildFilter(
                    label: 'Loại bất động sản',
                    child: StatusFilter(
                        options: categoryOptions,
                        isMultiSelect: true,
                        onSelected: onCategorySelected,
                        onActionAll: onCategoryActionAll,
                        maxVisibleItems: 2),
                  ),
                  LabelChildFilter(
                    customLable: true,
                    label: '',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 16.h,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                            children: [
                              const TextSpan(text: 'Mức giá: '),
                              TextSpan(
                                text:
                                    '${_formatNumber(priceRange.start)} - ${_formatNumber(priceRange.end)} $priceUnit',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: TextColors.textBrandPrimary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          spacing: 8.w,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: LabelInputField(
                                label: 'Thấp nhất',
                                hintText: 'Từ',
                                maxLength: 6,
                                controller: minPriceController,
                                focusNode: minPriceNode,
                                inputFieldType: InputFieldType.phone,
                                textInputAction: TextInputAction.next,
                                onChanged: (value) {
                                  final newMin = double.tryParse(
                                          value.replaceAll('.', '')) ??
                                      0;
                                  if (newMin > priceRange.end) {
                                    onPriceRangeChanged(
                                        RangeValues(newMin, newMin));
                                  } else {
                                    onPriceRangeChanged(RangeValues(
                                        newMin, priceRange.end));
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 24.sp,
                                color: IconColors.iconDefaultSecondary,
                              ),
                            ),
                            Expanded(
                              child: LabelInputField(
                                label: 'Cao nhất',
                                hintText: 'Đến',
                                maxLength: 6,
                                controller: maxPriceController,
                                focusNode: maxPriceNode,
                                inputFieldType: InputFieldType.phone,
                                textInputAction: TextInputAction.done,
                                onChanged: (value) {
                                  final newMax = double.tryParse(
                                          value.replaceAll('.', '')) ??
                                      0;
                                  if (newMax < priceRange.start) {
                                    onPriceRangeChanged(
                                        RangeValues(newMax, newMax));
                                  } else {
                                    onPriceRangeChanged(RangeValues(
                                        priceRange.start, newMax));
                                  }
                                },
                              ),
                            )
                          ],
                        ),
                        // Đơn vị
                        DropdownField(
                          items: itemPrices,
                          hintText: 'Chọn đơn vị tiền',
                          onChanged: onPriceUnitChanged,
                          value: selectedPriceUnit,
                          selectBloc: priceUnitBloc,
                        ),

                        PriceRangeSlider(
                            values: priceRange,
                            onChanged: onPriceRangeChanged)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
      bottomNavigationBar: BottomActionBar(
        actionLabel: actionLabel,
        onActionPressed: onBottomActionPressed,
        onResetPressed: onBottomResetPressed,
      ),
    );
  }
}
