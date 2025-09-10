import 'package:rive/rive.dart';

class MultiLoadingStateService {
  SMITrigger? check;
  SMITrigger? error;
  SMITrigger? reset;

  void init(Artboard artboard) {
    final controller =
        StateMachineController.fromArtboard(artboard, 'State Machine 1');
    if (controller == null) return;
    artboard.addController(controller);

    check = controller.findInput<bool>('Check') as SMITrigger?;
    error = controller.findInput<bool>('Error') as SMITrigger?;
    reset = controller.findInput<bool>('Reset') as SMITrigger?;
  }

  void fireCheck() => check?.fire();
  void fireError() => error?.fire();
  void fireReset() => reset?.fire();
}
