import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown<T> extends StatefulWidget {
  final Map<T, String> items;
  final List<Widget> trailingWidgets;
  final T? value;
  final void Function(T?) onChanged;
  final String hintText;
  final EdgeInsetsGeometry? paddingDropdownItems;
  final EdgeInsetsGeometry? paddingButton;
  final Color? backgroundColorButton;
  final BorderRadius? borderRadiusButton;
  final BoxBorder? borderButton;
  final IconData? suffixIconActive;
  final IconData? suffixIconInActive;
  final Offset? offset;
  final double? maxHeightDropdown;
  final Color shadowColor;
  final Widget? prefixIcon;

  CustomDropdown({
    super.key,
    required this.items,
    this.value,
    required this.onChanged,
    required this.hintText,
    this.paddingDropdownItems,
    this.paddingButton,
    this.backgroundColorButton,
    this.borderRadiusButton,
    this.borderButton,
    this.suffixIconActive,
    this.suffixIconInActive,
    this.offset,
    this.maxHeightDropdown,
    this.shadowColor = AppColors.borderSeparatorOpaque,
    this.prefixIcon,
    this.trailingWidgets = const [],
  }) : assert(
         value == null || items.containsKey(value),
         'Items are not contains value !',
       );

  @override
  State<CustomDropdown<T>> createState() => _CustomizeDropdownState<T>();
}

class _CustomizeDropdownState<T> extends State<CustomDropdown<T>> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    super.dispose();
  }

  // Toggle dropdown
  void _toggleDropdown(BuildContext context) {
    if (_overlayEntry == null) {
      _showDropdown(context);
    } else {
      _removeDropdown(context);
    }
  }

  // Display dropdown
  void _showDropdown(BuildContext context) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Size size = renderBox.size;

    final List<MapEntry<T, String>> convertItems = widget.items.entries
        .map((el) => MapEntry(el.key, el.value))
        .toList();

    _overlayEntry = OverlayEntry(
      builder: (_) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _removeDropdown(context),
        child: Stack(
          children: [
            Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                offset: widget.offset ?? Offset(0, size.height + 12.h),
                showWhenUnlinked: false,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  height: widget.maxHeightDropdown,
                  decoration: BoxDecoration(
                    borderRadius:
                        widget.borderRadiusButton ??
                        BorderRadius.circular(12.r),
                    border: Border.all(
                      width: 1.w,
                      color: AppColors.borderSeparatorOpaque,
                    ),
                    boxShadow: [
                      BoxShadow(color: widget.shadowColor, blurRadius: 12.r),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius:
                        widget.borderRadiusButton ??
                        BorderRadius.circular(12.r),
                    child: Scrollbar(
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (_, index) => Divider(
                          height: 1.h,
                          color: AppColors.borderSeparatorOpaque,
                        ),
                        itemBuilder: (_, index) {
                          final bool isSelected =
                              convertItems[index].key == widget.value;
                          return CupertinoButton(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.textButtonPrimary,
                            minSize: 0,
                            borderRadius: BorderRadius.zero,
                            padding:
                                widget.paddingDropdownItems ??
                                EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 11.h,
                                ),
                            alignment: Alignment.centerLeft,
                            onPressed: () {
                              widget.onChanged(convertItems[index].key);
                              _removeDropdown(context);
                            },
                            child: Row(
                              spacing: 6.w,
                              children: [
                                SizedBox(
                                  width: 16.w,
                                  child: Visibility(
                                    visible: isSelected,
                                    child: Icon(
                                      Icons.check,
                                      color: TextColors
                                          .textComboBoxMenuItemOnselected,
                                      size: 20.sp,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    convertItems[index].value,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: isSelected
                                              ? Colors.white
                                              : TextColors
                                                    .textComboBoxMenuItemDefault,
                                        ),
                                  ),
                                ),

                                // Trailing
                                if (widget.trailingWidgets.isNotEmpty &&
                                    widget.trailingWidgets.elementAtOrNull(
                                          index,
                                        ) !=
                                        null)
                                  widget.trailingWidgets[index],
                              ],
                            ),
                          );
                        },
                        itemCount: convertItems.length,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    if (_overlayEntry != null) {
      Overlay.of(context).insert(_overlayEntry!);
      context.read<SelectBloc<bool>>().add(SelectEvent.select(true));
    }
  }

  // This function is used to remove dopdown
  void _removeDropdown(BuildContext context) {
    _overlayEntry?.remove();
    _overlayEntry = null;
    context.read<SelectBloc<bool>>().add(SelectEvent.select(false));
  }

  // Get value or hint text
  String _getHintOrValue() {
    return widget.value != null
        ? widget.items.entries
                  .where((el) => el.key == widget.value)
                  .firstOrNull
                  ?.value ??
              widget.hintText
        : widget.hintText;
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: BlocProvider(
        create: (context) => sl<SelectBloc<bool>>(),
        child: BlocBuilder<SelectBloc<bool>, SelectState<bool>>(
          builder: (context, state) {
            final currentState = state is Selected<bool> ? state.value : false;

            return GestureDetector(
              onTap: () => _toggleDropdown(context),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                alignment: Alignment.center,
                padding:
                    widget.paddingButton ??
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                decoration: BoxDecoration(
                  borderRadius:
                      widget.borderRadiusButton ?? BorderRadius.circular(12.r),
                  color:
                      widget.backgroundColorButton ??
                      AppColors.backgroundDefaultPrimary,
                  border:
                      widget.borderButton ??
                      Border.all(
                        width: 1.w,
                        color: currentState == true
                            ? AppColors.primary
                            : AppColors.borderSeparatorNonOpaque,
                      ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: widget.prefixIcon != null,
                      child: widget.prefixIcon == null
                          ? SizedBox.shrink()
                          : Padding(
                              padding: EdgeInsets.only(right: 4.w),
                              child: widget.prefixIcon,
                            ),
                    ),
                    Expanded(
                      child: Text(
                        _getHintOrValue(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: widget.value != null
                              ? null
                              : AppColors.textDefaultTertiary,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Icon(
                      currentState == true
                          ? (widget.suffixIconActive ?? Icons.expand_less)
                          : (widget.suffixIconInActive ?? Icons.expand_more),
                      size: 22.sp,
                      color: currentState
                          ? AppColors.iconNavigationBarEnabled
                          : AppColors.iconNavigationBarDefault,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
