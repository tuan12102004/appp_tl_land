import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/add_decription/text_format_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AddDescriptionPage extends StatefulWidget {
  final TextEditingController controller;
  const AddDescriptionPage({
    super.key, 
    required this.controller, 
  });

  @override
  State<AddDescriptionPage> createState() => _AddDecriptionPageState();
}

class _AddDecriptionPageState extends State<AddDescriptionPage> {
  final int _maxLength = 5000;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onUpdateCount);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onUpdateCount);
    super.dispose();
  }

  // TODO: Update count word
  void _onUpdateCount() {
    final count = widget.controller.text.length;
    context.read<SelectBloc<int>>().add(SelectEvent.select(value: count));
  }

  // TODO: Save decription
  void _onSaveDecription(){
    context.pop(widget.controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColors.backgroundDefaultPrimary,
        appBar: CustomAppbar(
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            children: [
              SizedBox(width: 8.w),
              GestureDetector(
                onTap: () => context.pop(""),
                child: Icon(
                  Icons.close,
                  color: IconColors.iconNavigationBarEnabled,
                  size: 22.sp,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                'Mô tả',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 17.sp,
                  color: TextColors.textNavigationBarEnabled
                ),
              ),
            ],
          ),
          centerTitle: false,
          isDivider: false,
          actions: [
            GestureDetector(
              onTap: _onSaveDecription,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: Text(
                  "Lưu",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                    color: TextColors.textNavigationBarEnabled
                  ),
                ),
              ),
            )
          ],
        ),
        body: UnfocusWidget(
          child: SafeArea(
            minimum: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    controller: widget.controller,
                    maxLines: null,
                    minLines: 3,
                    maxLength: _maxLength,
                    decoration: InputDecoration(
                      hintText: "Nhập mô tả",
                      hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: TextColors.textDefaultTertiary.withValues(alpha: 0.5),
                      ),
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      counterText: "",
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: BlocBuilder<SelectBloc<int>, SelectState<int>>(
                    builder: (context, state) {
                      final count = state.maybeWhen(
                        selected: (v) => v,
                        orElse: () => widget.controller.text.length,
                      );
                      return Text(
                        "$count/$_maxLength ký tự",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                // Tool bar edit text
                TextFormatToolbar(
                  controller: widget.controller,
                )
              ],
            ),
          ),
        ),
      );
  }
} 