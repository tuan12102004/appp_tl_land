import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExpansionTitle extends StatefulWidget {
  final String title;
  final String? selectText;
  final Widget Function(ValueChanged<String>)? childBuilder;
  final Widget Function(String?)? collapsedBuilder;

  const CustomExpansionTitle({
    super.key,
    required this.title,
    this.selectText,
    this.childBuilder,
    this.collapsedBuilder,
  });

  @override
  State<CustomExpansionTitle> createState() => _CustomExpansionTitleState();
}

class _CustomExpansionTitleState extends State<CustomExpansionTitle> {
  bool isExpanded = false;
  String? selectedValue;

  void _onValueChanged(String value) {
    setState(() {
      selectedValue = value;
      isExpanded = false; // đóng lại sau khi chọn
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: BackgroundColors.backgroundDefaultPrimary,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: TextColors.textBrandPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp,
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: IconColors.iconBrandPrimary,
                    size: 32.sp,
                  ),
                ],
              ),
            ),
      
            // Phần hiển thị dưới row
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
              child: !isExpanded
                  ? (widget.collapsedBuilder != null 
                      ? widget.collapsedBuilder!(selectedValue) 
                      : Text(
                          (selectedValue != null && selectedValue!.isNotEmpty)
                              ? selectedValue!
                              : (widget.selectText != null && widget.selectText!.isNotEmpty)
                                  ? widget.selectText!
                                  : "Chưa có thông tin",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: widget.selectText != null && widget.selectText!.isNotEmpty
                                ? TextColors.textDefaultPrimary
                                : TextColors.textDefaultPrimary.withValues(alpha: 0.5),
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                          ),
                        ))
                  : widget.childBuilder?.call(_onValueChanged) ?? const SizedBox.shrink(),
            ),
      
          ],
        ),
      ),
    );
  }
}
