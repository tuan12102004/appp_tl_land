import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/noti_pre_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Future<void> showNotiDialog(
  BuildContext context, {
  required String title,
  required String content,
  VoidCallback? onCancel,
  VoidCallback? onConfirm,
  VoidCallback? onConfirmSub,
  VoidCallback? onUndo,
  String? cancelText,
  String? confirmText,
}) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: AppColors.borderSeparatorNonOpaque.withValues(alpha: 0.2),
    builder: (_) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      title: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                ),
          ),
          Text(
            'Bạn chắc chắn muốn ${title.toLowerCase()}?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                ),
          ),
        ],
      ),
      actionsPadding: EdgeInsets.all(4.w),
      actions: [
        Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(
              color: AppColors.borderSeparatorNonOpaque.withValues(alpha: 0.2),
              width: 0.4,
            ),
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                      border: Border(
                    right: BorderSide(
                      color: AppColors.borderSeparatorNonOpaque
                          .withValues(alpha: 0.2),
                      width: 0.4,
                    ),
                  )),
                  child: CustomAdaptiveTapEffect(
                    isOpacity: true,
                    onPressed: () {
                      if (onCancel != null) onCancel();
                    },
                    text: cancelText ?? "Hủy",
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.w),
                  child: CustomAdaptiveTapEffect(
                    isOpacity: true,
                    onPressed: () async {
                      context.pop();
                      if (onConfirmSub != null) onConfirmSub();
                      showNotiSnackbar(
                        context,
                        content: title,
                        snackbarType: SnackbarType.info,
                        isUndo: true,
                        onUndo: () {
                          if (onUndo != null) {
                            onUndo();
                          }
                        },
                        onTimeout: () {
                          if (onConfirm != null) {
                            onConfirm();
                          }
                        },
                      );
                    },
                    child: Text(
                      confirmText ?? "Đồng ý xóa",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                          color: AppColors.textButtonPlain),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
