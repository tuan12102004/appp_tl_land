import 'package:app_tl_land_3212/common/blocs/dialog_observer/dialog_observer_bloc.dart';
import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/common/enums/dialog_type.dart';
import 'package:flutter/material.dart';

import '../di/service_locator.dart';

Future<void> showAppDialog(
  BuildContext context, {
  required String title,
  required String content,
  DialogType type = DialogType.okCancel,
  VoidCallback? onCancel,
  VoidCallback? onConfirm,
  String? cancelText,
  String? confirmText,
  Color? cancelColor,
  Color? confirmColor,
}) async {
  sl<DialogObserverBloc>().add(OpenTheDialog());
  await showAdaptiveDialog(
    barrierDismissible: false,
    context: context,
    builder:
        (context) => PopScope(
          canPop: false,
          child: Visibility(
            visible: type == DialogType.ok,
            replacement: CustomOkCancelDialog(
              title: title,
              content: content,
              cancelColor: cancelColor,
              cancelText: cancelText,
              confirmColor: confirmColor,
              confirmText: confirmText,
              onCancel: onCancel,
              onConfirm: onConfirm,
            ),
            child: CustomOkDialog(
              title: title,
              content: content,
              confirmColor: confirmColor,
              confirmText: confirmText,
              onConfirm: onConfirm,
            ),
          ),
        ),
  ).then((_) => sl<DialogObserverBloc>().add(CloseTheDialog()));
}
