import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void showAppLoading(
  BuildContext context, {
  double? size,
  void Function(Artboard)? onInit,
  required String riveAnimationPath,
}) async {
  sl<DialogObserverBloc>().add(OpenTheDialog());
  await showGeneralDialog(
    context: context,
    barrierLabel: "loading",
    pageBuilder:
        (context, _, __) => CustomRiveAnimation(
          riveAnimationPath: riveAnimationPath,
          onInit: onInit,
          size: size,
        ),
  ).then((_) => sl<DialogObserverBloc>().add(CloseTheDialog()));
}
