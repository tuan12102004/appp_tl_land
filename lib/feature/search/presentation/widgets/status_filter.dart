import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusFilter extends StatefulWidget {
  final Map<String, bool> options; // Map<String, bool>
  final ValueChanged<Map<String, bool>> onSelected; // Trả về map thay vì list
  final VoidCallback? onActionAll;
  final bool isMultiSelect;

  const StatusFilter({
    super.key,
    this.onActionAll,
    required this.options,
    required this.onSelected,
    this.isMultiSelect = false,
  });

  @override
  State<StatusFilter> createState() => _StatusFilterState();
}

class _StatusFilterState extends State<StatusFilter> {
  late Map<String, bool> selectedMap;
  final int maxVisible = 8;

  @override
  void initState() {
    super.initState();
    // copy để tránh thay đổi trực tiếp map gốc
    selectedMap = Map<String, bool>.from(widget.options);

    // Nếu single select thì mặc định chọn phần tử đầu tiên nếu chưa có chọn
    if (!widget.isMultiSelect &&
        !selectedMap.containsValue(true) &&
        selectedMap.isNotEmpty) {
      final firstKey = selectedMap.keys.first;
      selectedMap.updateAll((key, value) => false);
      selectedMap[firstKey] = true;
    }
  }

  @override
  void didUpdateWidget(covariant StatusFilter oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Nếu options mới khác options cũ, cập nhật selectedMap
    if (oldWidget.options != widget.options) {
      setState(() {
        selectedMap = Map<String, bool>.from(widget.options);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final keys = widget.options.keys.toList();
    final bool showMore = keys.length > maxVisible;
    final List<String> visibleOptions =
        showMore ? keys.take(maxVisible).toList() : keys;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8.sp,
          runSpacing: 8.sp,
          children: [
            ...visibleOptions.map((option) {
              final bool isSelected = selectedMap[option] ?? false;

              return widget.isMultiSelect
                  ? FilterChip(
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      showCheckmark: false,
                      label: Text(
                        option,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.33.sp,
                          letterSpacing: -0.23.sp,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: BasicColors.blueZodiac500,
                      backgroundColor: const Color(0xFFF8F8F8),
                      onSelected: (_) {
                        setState(() {
                          selectedMap[option] = !isSelected;
                        });
                        widget.onSelected(selectedMap);
                      },
                    )
                  : ChoiceChip(
                      showCheckmark: false,
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.transparent),
                      ),
                      label: Text(
                        option,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.33.sp,
                          letterSpacing: -0.23.sp,
                        ),
                      ),
                      selected: isSelected,
                      selectedColor: BasicColors.blueZodiac500,
                      backgroundColor: const Color(0xFFF8F8F8),
                      onSelected: (_) {
                        setState(() {
                          selectedMap.updateAll((key, value) => false);
                          selectedMap[option] = true;
                        });
                        widget.onSelected(selectedMap);
                      },
                    );
            }),
            if (showMore)
              ActionChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Xem tất cả",
                      style: TextStyle(
                        color: BasicColors.blueZodiac500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Icon(
                      Icons.chevron_right,
                      size: 20.sp,
                      color: BasicColors.blueZodiac500,
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                pressElevation: 0,
                shape: const StadiumBorder(
                  side: BorderSide(color: Colors.transparent),
                ),
                onPressed: widget.onActionAll,
              ),
          ],
        ),
      ],
    );
  }
}
