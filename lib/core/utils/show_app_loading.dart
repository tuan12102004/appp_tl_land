import 'package:app_tl_land_3212/common/blocs/dialog_observer/dialog_observer_bloc.dart';
import 'package:app_tl_land_3212/common/widgets/custom_rive_animation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../di/service_locator.dart';

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
