import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/input_validators.dart';
import 'package:app_tl_land_3212/core/utils/label_form.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressSection extends StatelessWidget {
  final List<String> cities;
  final List<String> wards;
  final String? selectedCity;
  final String? selectedWard;
  final TextEditingController addressCon;
  final FocusNode addressNode;
  final Function(String) onAddressChanged;
  final Function(String?) onCityChanged;
  final Function(String?) onWardChanged;


  const AddressSection({
    super.key,
    required this.cities,
    required this.wards,
    required this.selectedCity,
    required this.selectedWard,
    required this.addressCon,
    required this.addressNode,
    required this.onAddressChanged, 
    required this.onCityChanged, 
    required this.onWardChanged,
  });

  String getFullAddress() {
    final parts = [
      if (addressCon.text.isNotEmpty) addressCon.text,
      if (selectedWard != null) "$selectedWard",
      if (selectedCity != null) "Thành phố $selectedCity",
    ];
    return parts.join(", ");
  }

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Địa chỉ bất động sản',
      selectText: getFullAddress(),
      childBuilder: (onValueChanged) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.h,
          children: [
            CustomCombobox<String>(
              label: 'Thành phố',
              hintText: 'Chọn thành phố',
              items: cities,
              itemLabel: (item) => item,
              value: selectedCity,
              onChanged: (value) {
                onCityChanged(value);
              },
            ),
            CustomCombobox<String>(
              label: 'Phường',
              hintText: 'Chọn phường',
              items: wards,
              itemLabel: (item) => item,
              value: selectedWard,
              onChanged: (value) {
                onWardChanged(value);
              },
            ),
            LabelForm(label: 'Địa chỉ cụ thể'),
            CustomInputField(
              hintText: "Nhập số nhà, tên đường",
              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
              ),
              controller: addressCon,
              focusNode: addressNode,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              validator: (value) => InputValidators.validate(
                value: value, 
                hintText: 'Địa chỉ cụ thể',
                keyboardType: TextInputType.text
              ),
              onEditingComplete: () {
                FocusScope.of(context).unfocus();
                onValueChanged(getFullAddress());
              },
              onChanged: (_) {
                onAddressChanged(getFullAddress());
              },
            ),
          ],
        );
      },
    );
  }
}