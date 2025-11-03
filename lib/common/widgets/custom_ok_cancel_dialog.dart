import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_adaptive_tap_effect.dart';

class CustomOkCancelDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final String? cancelText;
  final String? confirmText;
  final Color? cancelColor;
  final Color? confirmColor;

  const CustomOkCancelDialog({
    super.key,
    required this.title,
    required this.content,
    this.onCancel,
    this.onConfirm,
    this.cancelText,
    this.confirmText,
    this.cancelColor,
    this.confirmColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      titleTextStyle: Theme.of(
        context,
      ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),
      titlePadding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 12.h),
      title: Text(title),
      content: Text(content),
      contentTextStyle: Theme.of(context).textTheme.bodyLarge,
      contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
      actions: [
        // Cancel
        CustomAdaptiveTapEffect(
          onPressed: () {
            Navigator.pop(context);
            if (onCancel != null) {
              onCancel!();
            }
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
            child: Text(
              // cancelText ?? AppLocalizations.of(context)!.cancel,
              cancelText ?? 'Hủy',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: cancelColor ?? AppColors.stateColorsError,
                  ),
            ),
          ),
        ),

        // Confirm
        CustomAdaptiveTapEffect(
          onPressed: () {
            if (onConfirm != null) {
              onConfirm!();
            } else {
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
            child: Text(
              // confirmText ?? AppLocalizations.of(context)!.confirm,
              confirmText ?? 'Xác nhận',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: confirmColor ?? AppColors.primary,
                  ),
            ),
          ),
        ),
      ],
      actionsAlignment: MainAxisAlignment.end,
      elevation: 0,
      alignment: Alignment.center,
      actionsPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
    );
  }
}
