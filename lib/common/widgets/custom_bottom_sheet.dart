import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

Future<void> showAdaptiveBottomSheet({
  required BuildContext context,
  required Future<void> Function() onEventFirst, // đổi sang async
  Future<void> Function()? onEventSecond,
  required String titleEventFirst,
  String? titleEventSecond,
  required IconData iconFirst,
  required IconData iconSecond,
  Color? iconFirstColor,
  Color? iconSecondColor,
}) {
  void handleAction(BuildContext ctx, Future<void> Function() action, {bool pop = false}) async {
    if (!pop) ctx.pop();
    await action();
  }

  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: SpecialColors.specialOverlayDefault.withValues(alpha: 0.5),
    builder: (ctx) => CustomBottomSheet(
      onEventFirst: () async => handleAction(ctx, onEventFirst, pop: titleEventSecond != null),
      onEventSecond: onEventSecond,
      titleEventFirst: titleEventFirst,
      titleEventSecond: titleEventSecond,
      iconFirst: iconFirst,
      iconSecond: iconSecond,
      iconFirstColor: iconFirstColor,
      iconSecondColor: iconSecondColor,
    ),
  );
}

class CustomBottomSheet extends StatefulWidget {
  final Future<void> Function() onEventFirst;
  final Future<void> Function()? onEventSecond;
  final String titleEventFirst;
  final String? titleEventSecond;
  final IconData iconFirst;
  final IconData iconSecond;
  final Color? iconFirstColor;
  final Color? iconSecondColor;

  const CustomBottomSheet({
    super.key, 
    required this.onEventFirst,
    this.onEventSecond,
    required this.titleEventFirst,
    this.titleEventSecond, 
    required this.iconFirst, 
    required this.iconSecond, 
    this.iconFirstColor, 
    this.iconSecondColor,
  });

  @override
  State<CustomBottomSheet> createState() => CustomBottomSheetState();
}

class CustomBottomSheetState extends State<CustomBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: BackgroundColors.backgroundDefaultPrimary,
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 36.w,
              height: 5.h,
              decoration: BoxDecoration(
                color: ElementColors.secondary.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            SizedBox(height: 12.h,),
            // Nút Edit
            if (widget.titleEventSecond != null && widget.onEventSecond != null) ...[
              ListTile(
                leading: Icon(
                  widget.iconSecond,
                  color: widget.iconSecondColor
                ),
                title: Text(
                  widget.titleEventSecond!,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: IconColors.iconDefaultPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () async {
                  if (widget.onEventSecond != null) await widget.onEventSecond!();
                },
              ),
            ],

            ListTile(
              leading: Icon(
                widget.iconFirst,
                color: widget.iconFirstColor
              ),
              title: Text(
                widget.titleEventFirst,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: IconColors.iconDefaultPrimary,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              onTap: () async {
                await widget.onEventFirst(); // chờ dialog đóng
              },
            ),

            // Nút Hủy
            ListTile(
              leading: const Icon(Icons.close),
              title: Text(
                'Hủy thao tác',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: IconColors.iconDefaultPrimary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
