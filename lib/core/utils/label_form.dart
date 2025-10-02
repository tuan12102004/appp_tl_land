import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelForm extends StatelessWidget {
  final String label;
  const LabelForm({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
        color: TextColors.textDefaultPrimary 
      ),
    );
  }
}