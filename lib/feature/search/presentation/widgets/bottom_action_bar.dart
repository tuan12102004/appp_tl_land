import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomActionBar extends StatelessWidget {
  final String actionLabel;
  final void Function() onActionPressed;
  final void Function() onResetPressed;

  const BottomActionBar({
    super.key,
    required this.actionLabel,
    required this.onActionPressed,
    required this.onResetPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: BackgroundColors.backgroundDefaultPrimary,
          border: Border(
            top: BorderSide(
              width: 0.6.w,
              color: BorderColors.borderDefaultDefault,
            ),
          )),
      child: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: Row(
          spacing: 10.w,
          children: [
            Expanded(
              child: CustomAdaptiveButton(
                onPressed: onResetPressed,
                text: 'Đặt lại',
                backgroundColor: BackgroundColors.backgroundButtonSecondary,
                textColor: TextColors.textBrandPrimary,
              ),
            ),
            Expanded(
              child: CustomAdaptiveButton(
                onPressed: onActionPressed,
                text: actionLabel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
