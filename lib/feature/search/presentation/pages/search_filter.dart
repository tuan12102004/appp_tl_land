import 'package:app_tl_land_3212/common/enums/validate_type.dart';
import 'package:app_tl_land_3212/common/widgets/app_main_app_bar.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/search/presentation/cubits/category_cubit.dart';
import 'package:app_tl_land_3212/feature/search/presentation/cubits/range_cubit.dart';
import 'package:app_tl_land_3212/feature/search/presentation/pages/bottom_sheet_filter.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/bottom_action_bar.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/dropdown_field.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/label_child_filter.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/label_dropdown_field.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/label_input_field.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/price_range_slider.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/status_filter.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/unfocus_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchFilter extends StatelessWidget {
  final String title;
  final bool isIncrease;
  final VoidCallback onBottomActionPressed;
  final VoidCallback onBottomCancelPressed;
  final TextEditingController minPriceController;
  final TextEditingController maxPriceController;
  final FocusNode minPriceNode;
  final FocusNode maxPriceNode;
  const SearchFilter({
    super.key,
    required this.title,
    required this.isIncrease,
    required this.onBottomActionPressed,
    required this.onBottomCancelPressed,
    required this.minPriceController,
    required this.maxPriceController,
    required this.minPriceNode,
    required this.maxPriceNode,
  });

  @override
  Widget build(BuildContext context) {
    late final Map<int, String> itemProvinces = {
      1: 'Hà Nội',
      2: 'Hồ Chí Minh',
      3: 'Đà Nẵng',
      4: 'Hải Phòng',
      5: 'Cần Thơ',
    };
    late final Map<int, String> itemWards = {
      1: 'Phường 1',
      2: 'Phường 2',
      3: 'Phường 3',
      4: 'Phường 4',
      5: 'Phường 5',
    };
    late final Map<int, String> itemPrices = {
      1: 'Đơn vị: Nghìn đồng',
      2: 'Đơn vị: Triệu đồng',
      3: 'Đơn vị: Tỷ đồng',
    };
    late final Map<String, bool> itemStatus = {
      "Tất cả": false,
      "Đã bán": false,
      "Đang bán": false,
      "Đã thuê": false,
      "Đang thuê": false,
    };
    late final Map<String, bool> itemCategorys = {
      "Nhà bán": false,
      "Nhà thuê": false,
      "Nhà trọ": false,
      "Văn phòng": false,
      "Đất nền": false,
      "Khách sạn": false,
      "Đất trống": false,
      "Biệt thự liền kề": false,
      "Trang trại, khu nghỉ dưỡng": false,
      "Nhà xưởng, kho bãi": false,
      "Shophouse": false,
    };
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
                            items: itemProvinces,
                            hintText: 'Chọn thành phố'),
                        LabelDropdownField(
                            label: 'Phường',
                            items: itemWards,
                            hintText: 'Chọn phường'),
                      ],
                    ),
                  ),
                  LabelChildFilter(
                    label: 'Trạng thái',
                    child: StatusFilter(
                      options: itemStatus,
                      onSelected: (values) {
                        print("Chọn 1: ${values}");
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (_) => CategoryCubit()..init(values: itemCategorys),
                    child: BlocBuilder<CategoryCubit, Map<String, bool>>(
                      builder: (context, categorystate) {
                        return LabelChildFilter(
                          label: 'Loại bất động sản',
                          child: StatusFilter(
                            options: categorystate,
                            isMultiSelect: true,
                            onSelected: (values) {
                              values.forEach((key, value) {
                                context
                                    .read<CategoryCubit>()
                                    .checkBox(key, value);
                              });
                            },
                            onActionAll: () async {
                              final parentContext =
                                  context; // lấy context ở trong BlocBuilder

                              final result =
                                  await showModalBottomSheet<Map<String, bool>>(
                                context: parentContext,
                                isScrollControlled: true,
                                constraints:
                                    BoxConstraints(maxWidth: double.infinity),
                                builder: (_) => BlocProvider.value(
                                  value: parentContext.read<
                                      CategoryCubit>(), // truyền lại Cubit sẵn có
                                  child: SizedBox(
                                    height: 659.h,
                                    child: BottomSheetFilter(
                                      values: categorystate,
                                    ),
                                  ),
                                ),
                              );

                              if (result != null && parentContext.mounted) {
                                parentContext
                                    .read<CategoryCubit>()
                                    .init(values: result);
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  BlocProvider(
                    create: (context) => RangeCubit(),
                    child: BlocBuilder<RangeCubit, RangeValues>(
                      builder: (context, state) {
                        minPriceController.text =
                            state.start.toInt().toString();
                        maxPriceController.text = state.end.toInt().toString();
                        return LabelChildFilter(
                          customLable: true,
                          label: '',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 16.h,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 1.29.sp,
                                    letterSpacing: -0.43.sp,
                                  ),
                                  children: [
                                    const TextSpan(text: 'Mức giá: '),
                                    TextSpan(
                                      text:
                                          '${minPriceController.text} - ${maxPriceController.text}',
                                      style: TextStyle(
                                        color: BasicColors.blueZodiac500,
                                        fontSize: 17.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 1.29.sp,
                                        letterSpacing: -0.43.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                spacing: 8.w,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: LabelInputField(
                                      label: 'Thấp nhất',
                                      hintText: 'Từ',
                                      controller: minPriceController,
                                      focusNode: minPriceNode,
                                      inputFieldType: InputFieldType.phone,
                                      textInputAction: TextInputAction.next,
                                      onChanged: (value) {
                                        final min = double.tryParse(value) ??
                                            state.start;
                                        context
                                            .read<RangeCubit>()
                                            .updateMin(min);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 24.h),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 24.sp,
                                      color: BasicColors.black400,
                                    ),
                                  ),
                                  Expanded(
                                    child: LabelInputField(
                                      label: 'Cao nhất',
                                      hintText: 'Đến',
                                      controller: maxPriceController,
                                      focusNode: maxPriceNode,
                                      inputFieldType: InputFieldType.phone,
                                      textInputAction: TextInputAction.done,
                                      onChanged: (value) {
                                        final max =
                                            double.tryParse(value) ?? state.end;
                                        context
                                            .read<RangeCubit>()
                                            .updateMax(max);
                                      },
                                    ),
                                  )
                                ],
                              ),
                              // Đơn vị: Triệu VNĐ
                              DropdownField(
                                items: itemPrices,
                                hintText: 'Chọn đơn vị tiền',
                              ),

                              // PriceRangeSlider
                              PriceRangeSlider(
                                values: state,
                                onChanged: (range) {
                                  context.read<RangeCubit>().select(range);
                                  print(
                                      "MinPrice: ${range.start}, MaxPrice: ${range.end}");
                                },
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
      bottomNavigationBar: BottomActionBar(
        actionLabel: 'Áp dụng (1)',
        onActionPressed: onBottomActionPressed,
        onCancelPressed: onBottomCancelPressed,
      ),
    );
  }
}
