import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_text_field_with_counter.dart';
import 'package:flutter/material.dart';

class DescriptionSelector extends StatelessWidget {
  final TextEditingController descriptionController;
  final FocusNode descriptionFocusNode;
  final VoidCallback onTapOpenPage;

  const DescriptionSelector({
    super.key,
    required this.descriptionController,
    required this.descriptionFocusNode,
    required this.onTapOpenPage,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Mô tả BĐS',
      selectText: descriptionController.text,
      childBuilder: (_) {
        return CustomTextFieldWithCounter(
          controller: descriptionController,
          focusNode: descriptionFocusNode,
          readOnly: true,
          onTap: onTapOpenPage,
        );
      },
    );
  }
}
