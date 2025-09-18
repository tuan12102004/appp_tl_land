import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomActionBar extends StatelessWidget {
  final String actionLabel;
  final void Function() onActionPressed;
  final void Function() onCancelPressed;

  const BottomActionBar({
    super.key,
    required this.actionLabel,
    required this.onActionPressed,
    required this.onCancelPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              top: 16.h,
              bottom: 40.h,
            ),
            decoration: BoxDecoration(
                color: BackgroundColors.backgroundDefaultPrimary,
                border: Border(
                  top: BorderSide(
                    width: 0.6.w,
                    color: BorderColors.borderDefaultDefault,
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomAdaptiveButton(
                        borderWidth: 12.r,
                        backgroundColor: const Color(0xFFF1F9FE),
                        textColor: BasicColors.blueZodiac500,
                        onPressed: onCancelPressed,
                        text: 'Đặt lại',
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: CustomAdaptiveButton(
                        borderWidth: 12.r,
                        backgroundColor: BasicColors.blueZodiac500,
                        textColor: Colors.white,
                        onPressed: onActionPressed,
                        text: actionLabel,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
