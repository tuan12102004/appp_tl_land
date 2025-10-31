import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DatePickerField extends StatelessWidget {
  final String label;
  final DateTime? selectedDate;
  final Function(DateTime) onDateSelected;

  const DatePickerField({
    super.key,
    required this.label,
    required this.selectedDate,
    required this.onDateSelected,
  });

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900), // Cho phép chọn từ năm 1900
      lastDate: DateTime.now(), // Không cho phép chọn ngày trong tương lai
      locale: const Locale('vi', 'VN'), // Hiển thị tiếng Việt
      builder: (context, child) {
        // Tùy chỉnh theme cho DatePicker cho đẹp hơn
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.backgroundDefaultPrimary, // Màu chính
              onPrimary: Colors.white,
              onSurface: TextColors.textDefaultPrimary,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.backgroundDefaultPrimary,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Dùng thư viện intl để format ngày tháng thành "dd/MM/yyyy"
    final String displayDate = selectedDate != null
        ? DateFormat('dd/MM/yyyy').format(selectedDate!)
        : 'Chọn ngày sinh';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelForm(label: label),
        SizedBox(height: 8.h),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Container(
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color:
                    BorderColors.borderInputFieldDefault.withValues(alpha: 0.2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  displayDate,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: selectedDate == null
                            ? TextColors.textDefaultTertiary
                                .withValues(alpha: 0.3)
                            : TextColors.textDefaultPrimary,
                      ),
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
                  size: 20.sp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
