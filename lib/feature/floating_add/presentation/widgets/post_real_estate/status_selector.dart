import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:flutter/material.dart';

class StatusSelector extends StatelessWidget {
  final String? selectedValueStatus;
  final List<String> statusList;
  final ValueChanged<String?> onChanged;
  const StatusSelector({
    super.key,
    required this.selectedValueStatus,
    required this.statusList,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Trạng thái',
      selectText: selectedValueStatus,
      childBuilder: (onValueChanged) {
        return CustomCombobox<String>(
          hintText: '-Chọn trạng thái-',
          items: statusList,
          itemLabel: (item) => item,
          value: selectedValueStatus,
          onChanged: (value) {
            onChanged(value);
            onValueChanged(value);
          },
        );
      },
    );
  }
}