import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLabelWithInput extends StatelessWidget {
  const CustomLabelWithInput({
    super.key,
    required this.label,
    required this.input,
  });
  final String label;
  final Widget input;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 6.h,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
        input,
      ],
    );
  }
}
