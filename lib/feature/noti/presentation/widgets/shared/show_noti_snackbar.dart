import 'dart:async';
import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> showNotiSnackbar(
  BuildContext context, {
  SnackbarType snackbarType = SnackbarType.normal,
  String? content,
  bool? isUndo = true,
  int duration = 5,
  VoidCallback? onUndo,
  VoidCallback? onTimeout,
}) async {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  final countDown = ValueNotifier<int>(duration);
  bool isDismissedByUndo = false;

  final timer = Timer.periodic(const Duration(seconds: 1), (t) {
    if (countDown.value > 1) {
      countDown.value--;
    } else {
      t.cancel();
    }
  });

  final snackBar = SnackBar(
    backgroundColor: snackbarType.primaryColor,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
    margin: EdgeInsets.all(16.w),
    duration: Duration(seconds: duration),
    content: ValueListenableBuilder<int>(
      valueListenable: countDown,
      builder: (context, value, _) {
        return Row(
          spacing: 12.w,
          children: [
            Expanded(
              child: Text(
                '$content ${snackbarType.status}',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.stateColorsNormal,
                    ),
              ),
            ),
            if (isUndo == true) ...[
              CustomAdaptiveTapEffect(
                onPressed: () {
                  isDismissedByUndo = true; // đánh dấu do bấm hoàn tác
                  onUndo?.call();
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                child: Text(
                  'Hoàn tác ${value}s',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.stateColorsNormal,
                      ),
                ),
              )
            ]
          ],
        );
      },
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((_) {
    timer.cancel();
    if (!isDismissedByUndo && onTimeout != null) {
      onTimeout();
    }
  });
}
