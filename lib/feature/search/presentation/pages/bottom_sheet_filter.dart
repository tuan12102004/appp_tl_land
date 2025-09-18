import 'package:app_tl_land_3212/common/widgets/custom_search_bar.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/search/presentation/cubits/category_cubit.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/bottom_action_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetFilter extends StatefulWidget {
  final Map<String, bool> values;

  const BottomSheetFilter({
    super.key,
    required this.values,
  });

  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}

class _BottomSheetFilterState extends State<BottomSheetFilter> {
  final TextEditingController _searchController = TextEditingController();
  late Map<String, bool> _selectedMap;

  @override
  void initState() {
    super.initState();
    _selectedMap = Map<String, bool>.from(widget.values);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, Map<String, bool>>(
      builder: (context, categories) {
        final filteredOptions = widget.values.keys.where(
          (key) => key.toLowerCase().contains(
                _searchController.text.toLowerCase(),
              ),
        );

        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      // Header
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Loại bất động sản",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(
                              Icons.cancel,
                              size: 30.sp,
                              color: BasicColors.black100,
                            ),
                          ),
                        ],
                      ),

                      // Search bar
                      CustomSearchBar(
                        controller: _searchController,
                        hintText: 'Tìm tên loại',
                        onChanged: (_) => setState(() {}),
                      ),
                      SizedBox(height: 12.h),

                      // Checkbox list
                      SizedBox(
                        height: 400.h,
                        child: ListView(
                          children: filteredOptions.map((option) {
                            final isChecked = categories[option] ??
                                _selectedMap[option] ??
                                false;

                            return CheckboxListTile(
                              side: BorderSide(
                                color: BasicColors.blueZodiac500,
                                width: 2.w,
                              ),
                              activeColor: BasicColors.blueZodiac500,
                              title: Text(
                                option,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 1.29.sp,
                                  letterSpacing: -0.43.sp,
                                ),
                              ),
                              value: isChecked,
                              onChanged: (value) {
                                context
                                    .read<CategoryCubit>()
                                    .checkBox(option, value ?? false);

                                setState(() {
                                  _selectedMap[option] = value ?? false;
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomActionBar(
            actionLabel:
                'Áp dụng (${_selectedMap.values.where((v) => v).length})',
            onActionPressed: () {
              Navigator.pop(context, _selectedMap); // Trả dữ liệu đã chọn
            },
            onCancelPressed: () {
              context.read<CategoryCubit>().reset();
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  }
}
