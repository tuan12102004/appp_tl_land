import 'package:app_tl_land_3212/common/widgets/custom_search_bar.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/bottom_action_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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

  void _resetSelections() {
    setState(() {
      _selectedMap.updateAll((key, _) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final filteredOptions = widget.values.keys
        .where(
          (key) => key.toLowerCase().contains(
                _searchController.text.toLowerCase(),
              ),
        )
        .toList();

    // Lấy chiều cao màn hình để giới hạn chiều cao tối đa của bottom sheet
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 16.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loại bất động sản",
                        style:
                            Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      IconButton(
                        onPressed: () => context.pop(),
                        icon: Icon(
                          Icons.cancel,
                          size: 30.sp,
                          color: IconColors.iconDefaultQuaternary,
                        ),
                      ),
                    ],
                  ),
                  CustomSearchBar(
                    controller: _searchController,
                    hintText: 'Tìm tên loại',
                    onChanged: (_) => setState(() {}),
                  ),
                  SizedBox(height: 12.h),
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(
                // Chiều cao tối đa là 50% chiều cao màn hình
                maxHeight: screenHeight * 0.5,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: filteredOptions.length,
                itemBuilder: (context, index) {
                  final option = filteredOptions[index];
                  final isChecked = _selectedMap[option] ?? false;

                  return CheckboxListTile(
                    side: BorderSide(
                      color: BasicColors.blueZodiac500,
                      width: 2.w,
                    ),
                    activeColor: BasicColors.blueZodiac500,
                    title: Text(
                      option,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        _selectedMap[option] = value ?? false;
                      });
                    },
                  );
                },
              ),
            ),
            BottomActionBar(
                actionLabel:
                    'Áp dụng (${_selectedMap.values.where((v) => v).length})',
                onActionPressed: () {
                  Navigator.pop(context, _selectedMap);
                },
                onResetPressed: _resetSelections),
          ],
        ),
      ),
    );
  }
}
