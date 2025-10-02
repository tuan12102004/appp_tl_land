import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  final String? selectedValueCategory;
  final List<String> categories;
  final ValueChanged<String?> onChanged;

  const CategorySelector({
    super.key,
    required this.selectedValueCategory,
    required this.categories,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Chọn danh mục BĐS',
      selectText: selectedValueCategory,
      childBuilder: (onValueChanged) {
        return CustomCombobox<String>(
          hintText: 'Danh mục BĐS',
          items: categories,
          itemLabel: (item) => item,
          value: selectedValueCategory,
          onChanged: (value) {
            onChanged(value);
            onValueChanged(value);
          },
        );
      },
    );
  }
}