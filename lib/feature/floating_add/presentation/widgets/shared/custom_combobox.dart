import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/label_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCombobox<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final String Function(T) itemLabel;
  final ValueChanged<T> onChanged;
  final String hintText;
  final String? label;

  const CustomCombobox({
    super.key,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    this.value,
    this.hintText = "Chọn giá trị",
    this.label,
  });

  @override
  State<CustomCombobox<T>> createState() => _CustomComboboxState<T>();
}

class _CustomComboboxState<T> extends State<CustomCombobox<T>> {
  T? selectedValue;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.value;
  }

  @override
  void didUpdateWidget(covariant CustomCombobox<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      selectedValue = widget.value;
    }
  }

  void _toggleDropdown() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void _selectItem(T item) {
    setState(() {
      selectedValue = item;
      isExpanded = false;
    });
    widget.onChanged(item);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          LabelForm(label: widget.label!),
        ],
        // Ô hiển thị giá trị + icon mũi tên
        CustomInputField(
          readOnly: true,
          hintText: selectedValue != null
              ? widget.itemLabel(selectedValue as T)
              : widget.hintText,
          hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: selectedValue == null
                  ? TextColors.textDefaultTertiary
                      .withValues(alpha: 0.3) // mờ khi chưa chọn
                  : TextColors.textDefaultPrimary // đậm khi chọn rồi
              ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 11.h,
          ),
          suffixIcon: Icon(
            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
          ),
          onTap: _toggleDropdown,
        ),

        // Danh sách xổ xuống
        if (isExpanded)
          Container(
            margin: EdgeInsets.only(top: 8.h),
            padding: EdgeInsets.all(6.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color:
                    BorderColors.borderInputFieldDefault.withValues(alpha: 0.3),
              ),
              color: BackgroundColors.backgroundDefaultPrimary,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                // Giới hạn tối đa chiều cao cho 5 item
                maxHeight: 5 * 52.h,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  final item = widget.items[index];
                  final isSelected = selectedValue == item;
                  return InkWell(
                    onTap: () => _selectItem(item),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 14.h),
                      margin: EdgeInsets.only(bottom: 4.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: isSelected
                            ? BackgroundColors
                                .backgroundComboBoxMenuItemOnselected
                            : Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          if (isSelected) ...[
                            Icon(
                              Icons.check,
                              color: IconColors.iconBrandOnbrand,
                              size: 16.sp,
                            ),
                            SizedBox(width: 2.w),
                          ],
                          Expanded(
                            child: Text(
                              widget.itemLabel(item),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.sp,
                                      color: isSelected
                                          ? TextColors
                                              .textComboBoxMenuItemOnselected
                                          : TextColors
                                              .textComboBoxMenuItemDefault),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
