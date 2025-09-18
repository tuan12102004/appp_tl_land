import 'package:app_tl_land_3212/common/blocs/select/select_bloc.dart';
import 'package:app_tl_land_3212/common/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelDropdownField extends StatelessWidget {
  final String label;
  final String hintText;
  final Map<int, String> items;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;

  const LabelDropdownField({
    super.key,
    required this.label,
    required this.items,
    required this.hintText,
    this.keyboardType = TextInputType.phone,
    this.textInputAction,
    this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectBloc<int>(),
      child: BlocBuilder<SelectBloc<int>, SelectState<int>>(
        builder: (context, state) {
          // final gender = state;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1.29.sp,
                  letterSpacing: -0.43.sp,
                ),
              ),
              SizedBox(height: 8.h),
              CustomDropdown<int>(
                paddingButton: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 11.h,
                ),
                items: items,
                onChanged: (value) {
                  context.read<SelectBloc<int>>().add(
                        SelectEvent.select(value!),
                      );
                },
                value: state.maybeWhen(
                  selected: (value) => value,
                  orElse: () => null,
                ),
                hintText: hintText,
              ),
            ],
          );
        },
      ),
    );
  }
}
