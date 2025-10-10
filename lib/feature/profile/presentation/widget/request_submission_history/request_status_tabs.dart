import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabItem {
  final String label;
  final Color color;

  const TabItem({
    required this.label,
    required this.color,
  });
}

class RequestStatusTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const RequestStatusTabs({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TabItem(label: "Chờ duyệt", color: BackgroundColors.backgroundSuccessPrimary),
      TabItem(label: "Đã duyệt", color: BackgroundColors.backgroundBrandPrimary),
      TabItem(label: "Từ chối", color: BackgroundColors.backgroundErrorPrimary),
    ];

    return DecoratedBox(
      decoration: BoxDecoration(
        color: BackgroundColors.backgroundDefaultPrimary,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final item = tabs[index];
          final isSelected = index == selectedIndex;

          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                height: 36.h,
                decoration: BoxDecoration(
                  color: isSelected ? item.color : Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: index == 0 ? Radius.circular(8.r) : Radius.zero,
                    right: index == tabs.length - 1 ? Radius.circular(8.r) : Radius.zero,
                  ),
                ),
                child: Center(
                  child: Text(
                    item.label,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : item.color,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}