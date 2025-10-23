import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/services/formatter_service.dart';
import 'package:app_tl_land_3212/core/utils/input_validators.dart';
import 'package:app_tl_land_3212/core/utils/label_form.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_expansion_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicInfoSection extends StatefulWidget {
  final TextEditingController nameCon;
  final FocusNode nameNode;
  final TextEditingController priceCon;
  final FocusNode priceNode;
  final TextEditingController addressCon;
  final FocusNode addressNode;

  final List<String> directions;
  final String? selectedDirection;
  final ValueChanged<String?> onDirectionChanged;

  const BasicInfoSection({
    super.key,
    required this.nameCon,
    required this.nameNode,
    required this.priceCon,
    required this.priceNode,
    required this.addressCon,
    required this.addressNode,
    required this.directions,
    required this.selectedDirection,
    required this.onDirectionChanged,
  });

  @override
  State<BasicInfoSection> createState() => _BasicInfoSectionState();
}

class _BasicInfoSectionState extends State<BasicInfoSection> {
  @override
  Widget build(BuildContext context) {
    return CustomExpansionTitle(
      title: 'Thông tin cơ bản',
      collapsedBuilder: (selectedValue) {
        if (widget.nameCon.text.isNotEmpty ||
            widget.priceCon.text.isNotEmpty ||
            widget.selectedDirection != null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.nameCon.text.isNotEmpty)
                Row(
                  children: [
                    Icon(Icons.maps_home_work,
                        color: IconColors.iconDefaultPrimary, size: 24.sp),
                    SizedBox(width: 8.w),
                    Expanded(child: LabelForm(label: widget.nameCon.text)),
                  ],
                ),
              SizedBox(height: 8.h),
              if (widget.priceCon.text.isNotEmpty ||
                  widget.selectedDirection != null)
                Row(
                  children: [
                    if (widget.priceCon.text.isNotEmpty)
                      Row(
                        children: [
                          Icon(Icons.attach_money,
                              color: IconColors.iconDefaultPrimary,
                              size: 24.sp),
                          SizedBox(width: 8.w),
                          LabelForm(label: widget.priceCon.text),
                        ],
                      ),
                    SizedBox(width: 16.w),
                    if (widget.selectedDirection != null)
                      Row(
                        children: [
                          Icon(Icons.directions,
                              color: IconColors.iconDefaultPrimary,
                              size: 24.sp),
                          SizedBox(width: 8.w),
                          LabelForm(label: 'Hướng ${widget.selectedDirection}'),
                        ],
                      ),
                  ],
                )
            ],
          );
        }
        return Text(
          "Chưa có thông tin",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
            fontWeight: FontWeight.w400,
            fontSize: 17.sp,
          ),
        );
      },
      childBuilder: (onValueChanged) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.h,
          children: [
            LabelForm(label: 'Tên BĐS'),
            CustomInputField(
              hintText: "VD: Bán chung cư tầng 7...",
              controller: widget.nameCon,
              focusNode: widget.nameNode,
              textInputAction: TextInputAction.next,
              onEditingComplete: () =>
                  FocusScope.of(context).requestFocus(widget.addressNode),
              keyboardType: TextInputType.text,
              validator: (value) => InputValidators.validate(
                value: value,
                hintText: 'Tên BĐS',
                keyboardType: TextInputType.text,
              ),
            ),
            LabelForm(label: 'Giá BĐS (VNĐ)'),
            CustomInputField(
              hintText: "VD: 1.000.000.000",
              controller: widget.priceCon,
              focusNode: widget.priceNode,
              textInputAction: TextInputAction.done,
              onEditingComplete: () => FocusScope.of(context).unfocus(),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FormatterService.numberFormatter
              ],
              validator: (value) => InputValidators.validate(
                value: value,
                hintText: 'Giá BĐS',
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 12.h),
            CustomCombobox<String>(
              label: 'Hướng nhà',
              hintText: 'Chọn hướng nhà',
              items: widget.directions,
              itemLabel: (item) => item,
              value: widget.selectedDirection,
              onChanged: (value) {
                widget.onDirectionChanged(value);
                onValueChanged(value);
                setState(() {});
              },
            ),
          ],
        );
      },
    );
  }
}
