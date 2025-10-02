import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/services/formatter_service.dart';
import 'package:app_tl_land_3212/core/utils/input_validators.dart';
import 'package:app_tl_land_3212/core/utils/label_form.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/counter_number.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvancedInfoSection extends StatelessWidget {
  final TextEditingController acreageCon;
  final FocusNode acreageNode;
  final int quantityBedroom;
  final int quantityToilet;
  final ValueChanged<int> onBedroomChanged;
  final ValueChanged<int> onToiletChanged;

  const AdvancedInfoSection({
    super.key,
    required this.acreageCon,
    required this.acreageNode,
    required this.quantityBedroom,
    required this.quantityToilet,
    required this.onBedroomChanged,
    required this.onToiletChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Thông tin nâng cao',
      collapsedBuilder: (_) {
        return ValueListenableBuilder<TextEditingValue>(
          valueListenable: acreageCon,
          builder: (context, value, child) {
            final acreage = value.text;
            if (acreage.isEmpty && quantityBedroom == 0 && quantityToilet == 0) {
              return Text(
                "Chưa có thông tin",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                ),
              );
            }
            return Row(
              children: [
                if (acreage.isNotEmpty) ...[
                  Icon(Icons.straighten, size: 24.sp, color: IconColors.iconDefaultPrimary),
                  SizedBox(width: 8.w),
                  LabelForm(label: '$acreage m²'),
                  SizedBox(width: 16.w),
                ],
                if (quantityBedroom > 0) ...[
                  Icon(Icons.bed_outlined, size: 24.sp, color: IconColors.iconDefaultPrimary),
                  SizedBox(width: 8.w),
                  LabelForm(label: '$quantityBedroom'),
                  SizedBox(width: 16.w),
                ],
                if (quantityToilet > 0) ...[
                  Icon(Icons.bathroom_outlined, size: 24.sp, color: IconColors.iconDefaultPrimary),
                  SizedBox(width: 8.w),
                  LabelForm(label: '$quantityToilet'),
                ],
              ],
            );
          },
        );
      },
      childBuilder: (onValueChanged) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.h,
          children: [
            LabelForm(label: 'Diện tích (m²)'),
            CustomInputField(
              hintText: "VD: 120",
              hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: TextColors.textDefaultTertiary.withValues(alpha: 0.3),
                  ),
              controller: acreageCon,
              focusNode: acreageNode,
              textInputAction: TextInputAction.done,
              onEditingComplete: () => FocusScope.of(context).unfocus(),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FormatterService.numberFormatter
              ],
              validator: (value) => InputValidators.validate(
                value: value,
                hintText: 'Diện tích',
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelForm(label: 'Số phòng ngủ'),
                CounterScreen(
                  initialValue: quantityBedroom,
                  onChanged: onBedroomChanged,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelForm(label: 'Số nhà vệ sinh'),
                CounterScreen(
                  initialValue: quantityToilet,
                  onChanged: onToiletChanged,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
