import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoEmpty extends StatelessWidget {
  final String? text;
  final bool hasIcon;
  const InfoEmpty({super.key, this.text, this.hasIcon = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: hasIcon
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications_off_outlined,
                  size: 80.sp,
                  color: IconColors.iconBrandPrimary,
                ),
                Text(
                  'Không có ${text ?? 'dữ liệu'}.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: TextColors.textDefaultSecondary,
                      ),
                ),
              ],
            )
          : Text(
              'Không có ${text ?? 'dữ liệu'}.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: TextColors.textDefaultSecondary,
                  ),
            ),
    );
  }
}
