import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelChildFilter extends StatelessWidget {
  final Widget child;
  final String label;
  final bool customLable;
  const LabelChildFilter(
      {super.key,
      required this.child,
      required this.label,
      this.customLable = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.h,
      children: [
        customLable
            ? SizedBox.shrink()
            : Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.29.sp,
                  letterSpacing: -0.43.sp,
                ),
              ),
        child,
      ],
    );
  }
}
