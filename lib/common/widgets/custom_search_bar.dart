import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final bool? enabled;
  final String? hintText;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  const CustomSearchBar({
    super.key,
    this.controller,
    this.focusNode,
    this.autofocus,
    this.enabled,
    this.hintText,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
      decoration: BoxDecoration(
          color: ElementColors.quaternary,
          borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // * Leading
          Icon(
            Icons.search,
            size: 22.sp,
            color: IconColors.iconDefaultSecondary,
          ),

          // Spacing
          SizedBox(
            width: 4.w,
          ),

          // * TextField
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              autofocus: autofocus ?? false,
              enabled: enabled ?? true,
              onTap: onTap,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              decoration: InputDecoration(
                  isDense: true,
                  filled: false,
                  contentPadding: EdgeInsets.all(0),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: hintText,
                  hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: TextColors.textDefaultSecondary,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                      )),
            ),
          )
        ],
      ),
    );
  }
}
