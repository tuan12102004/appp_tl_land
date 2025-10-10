import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPassField extends StatelessWidget {
  final TextEditingController _controller;
  final FocusNode _focusNode;
  final String? hintText;
  final void Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  const CustomPassField({
    super.key,
    required TextEditingController controller,
    required FocusNode focusNode,
    this.hintText,
    this.onEditingComplete,
    this.textInputAction,
    this.validator,
  }) : _controller = controller,
       _focusNode = focusNode;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectBloc<bool>()..add(SelectEvent.select(value: true)),
      child: BlocBuilder<SelectBloc<bool>, SelectState<bool>>(
        builder: (context, state) {
          return CustomInputField(
            obscureText: _getStateVal(state)!,
            hintText: hintText,
            controller: _controller,
            focusNode: _focusNode,
            keyboardType: TextInputType.visiblePassword,
            onEditingComplete: onEditingComplete,
            textInputAction: textInputAction,
            validator: validator,
            suffixIcon: CustomAdaptiveTapEffect(
              onPressed: () => context.read<SelectBloc<bool>>().add(
                SelectEvent.select(value: !_getStateVal(state)!),
              ),
              child: Icon(
                _getStateVal(state)! ? Icons.visibility : Icons.visibility_off,
                color: AppColors.iconDefaultSecondary,
                size: 22.sp,
              ),
            ),
          );
        },
      ),
    );
  }

  bool? _getStateVal(SelectState<bool> state) =>
      state is Selected<bool> ? state.value : true;
}
