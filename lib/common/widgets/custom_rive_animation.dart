import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart';

class CustomRiveAnimation extends StatelessWidget {
  final void Function(Artboard)? onInit;
  final String riveAnimationPath;
  final double? size;

  const CustomRiveAnimation({
    super.key,
    this.onInit,
    required this.riveAnimationPath,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: SizedBox(
          width: size ?? 100.w,
          height: size ?? 100.w,
          child: RiveAnimation.asset(
            riveAnimationPath,
            fit: BoxFit.contain,
            onInit: onInit,
          ),
        ),
      ),
    );
  }
}
