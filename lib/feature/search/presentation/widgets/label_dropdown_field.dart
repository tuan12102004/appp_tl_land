import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/common/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelDropdownField extends StatefulWidget {
  final String label;
  final String hintText;
  final Map<int, String> items;
  final int? value;
  final ValueChanged<int?> onChanged;
  final SelectBloc<int?> selectBloc;
  const LabelDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.hintText,
    this.value,
    required this.onChanged,
    required this.selectBloc,
  });
  @override
  State<LabelDropdownField> createState() => _LabelDropdownFieldState();
}

class _LabelDropdownFieldState extends State<LabelDropdownField> {
  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      widget.selectBloc.add(SelectEvent.select(value: widget.value));
    }
  }

  @override
  void didUpdateWidget(covariant LabelDropdownField oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Nếu SearchFilterPage build lại với value mới => đồng bộ state của SelectBLoC
    if (widget.value != oldWidget.value) {
      widget.selectBloc.add(SelectEvent.select(value: widget.value));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.selectBloc,
      child: BlocBuilder<SelectBloc<int?>, SelectState<int?>>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.label,
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(height: 8.h),
              CustomDropdown<int>(
                maxHeightDropdown: 250.h,
                paddingButton: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 11.h,
                ),
                items: widget.items,
                onChanged: (value) {
                  widget.selectBloc.add(SelectEvent.select(value: value));
                  widget.onChanged(value);
                },
                value: widget.value,
                hintText: widget.hintText,
              ),
            ],
          );
        },
      ),
    );
  }
}
