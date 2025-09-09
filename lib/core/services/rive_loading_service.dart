import 'package:rive/rive.dart';

class RiveLoadingService {
  late SMITrigger check;
  late SMITrigger error;
  late SMITrigger reset;

  void init(Artboard artboard) {
    StateMachineController controller =
        StateMachineController.fromArtboard(artboard, 'State Machine 1')!;
    artboard.addController(controller);

    check = controller.findInput<bool>('Check') as SMITrigger;
    error = controller.findInput<bool>('Error') as SMITrigger;
    reset = controller.findInput<bool>('Reset') as SMITrigger;
  }

  void fireCheck() => check.fire();
  void fireError() => error.fire();
  void fireReset() => reset.fire();
}
