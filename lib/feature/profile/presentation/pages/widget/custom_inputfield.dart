import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.controller,
    this.icon,
    this.label,
    required this.hintStyle,
  });

  final String? label;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final IconData? icon;
  final TextStyle hintStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.h, 16.w, 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null && label!.isNotEmpty) ...[
            Text(
              label!,
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
          ],
          Container(
            width: 361.w,
            height: 44.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff000000).withValues(alpha: 0.2),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                suffixIcon: Icon(
                  icon,
                  size: 22.sp,
                  color: Color(0xff000000).withValues(alpha: 0.5),
                ),
                border: InputBorder.none,
                hintStyle: hintStyle,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 11.h,
                ), // canh chuẩn
              ),
            ),
          ),
        ],
      ),
    );
  }
}
