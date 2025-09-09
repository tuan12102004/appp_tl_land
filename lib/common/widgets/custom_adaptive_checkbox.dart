import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdaptiveCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  
  const CustomAdaptiveCheckbox({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox.adaptive(
      value: value,
      onChanged: onChanged,
      visualDensity: VisualDensity.compact,
      activeColor: SpecialColors.specialCheckBoxDefault,
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return SpecialColors.specialCheckBoxDefault;
        }
        return Colors.transparent;
      }),
      side: BorderSide(color: SpecialColors.specialCheckBoxDefault, width: 2.w),
    );
  }
}
