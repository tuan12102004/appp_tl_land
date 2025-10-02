import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWithCounter extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final int maxLength;
  final bool? readOnly;
  final VoidCallback? onTap;

  const CustomTextFieldWithCounter({
    super.key,
    required this.controller,
    this.focusNode,
    this.maxLength = 5000, 
    this.readOnly = false, 
    this.onTap,
  });

  @override
  State<CustomTextFieldWithCounter> createState() => _CustomTextFieldWithCounterState();
}

class _CustomTextFieldWithCounterState extends State<CustomTextFieldWithCounter> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateCount);
    _count = widget.controller.text.length;
  }

  void _updateCount() {
    setState(() {
      _count = widget.controller.text.length;
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateCount);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          readOnly: widget.readOnly ?? false,
          onTap: widget.onTap,
          controller: widget.controller,
          focusNode: widget.focusNode,
          maxLines: null,
          minLines: 3,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            hintText: "Nhập mô tả",
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: TextColors.textDefaultTertiary.withValues(alpha: 0.5),
            ),
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            counterText: "",
          ),
        ),

        Positioned(
          right: 8.w,
          bottom: 0.h,
          child: Text(
            "$_count/${widget.maxLength} ký tự",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
