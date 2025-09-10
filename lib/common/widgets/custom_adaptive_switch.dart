import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';

class CustomAdaptiveSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool val) onChanged;

  const CustomAdaptiveSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: value,
      trackOutlineWidth: WidgetStatePropertyAll(0),
      inactiveTrackColor: BackgroundColors.backgroundErrorPrimary,
      trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
      activeColor: BackgroundColors.backgroundDefaultPrimary,
      activeTrackColor: BackgroundColors.backgroundSuccessPrimary,
      thumbColor: WidgetStatePropertyAll(
        BackgroundColors.backgroundDefaultPrimary,
      ),
      padding: EdgeInsets.zero,
      onChanged: onChanged,
    );
  }
}
