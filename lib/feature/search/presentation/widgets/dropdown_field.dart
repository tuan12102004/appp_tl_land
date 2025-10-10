import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/common/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownField extends StatefulWidget {
  final String hintText;
  final Map<int, String> items;
  final int? value;
  final ValueChanged<int?> onChanged;
  final SelectBloc<int?> selectBloc;

  const DropdownField({
    super.key,
    required this.items,
    required this.hintText,
    this.value,
    required this.onChanged,
    required this.selectBloc,
  });
  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      widget.selectBloc.add(SelectEvent.select(value: widget.value));
    }
  }

  @override
  void didUpdateWidget(covariant DropdownField oldWidget) {
    super.didUpdateWidget(oldWidget);
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
          return CustomDropdown<int>(
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
          );
        },
      ),
    );
  }
}
