import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';

class PriceRangeSlider extends StatelessWidget {
  final double min;
  final double max;
  final RangeValues values;
  final ValueChanged<RangeValues> onChanged;

  const PriceRangeSlider({
    super.key,
    this.min = 0,
    this.max = 999999,
    required this.values,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: BasicColors.blueZodiac500,
            overlayColor: BasicColors.blueZodiac500,
            activeTrackColor: BackgroundColors.backgroundDefaultSecondary,
            inactiveTrackColor: BasicColors.black100,
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
          ),
          child: RangeSlider(
            values: values, // 👈 dùng giá trị từ ngoài
            min: min,
            max: max,
            divisions: 100,
            labels: RangeLabels(
              values.start.toInt().toString(),
              values.end.toInt().toString(),
            ),
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
