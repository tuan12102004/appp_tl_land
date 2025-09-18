import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed,
    required this.background,
  });

  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50.h,
        width: 361.w,
        margin: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 20.h),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
