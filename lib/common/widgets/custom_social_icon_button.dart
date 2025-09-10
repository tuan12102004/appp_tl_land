import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialIconButton extends StatelessWidget {
  final String? imagePath;
  final IconData? iconData;
  final VoidCallback? onTap;

  const CustomSocialIconButton({
    super.key,
    this.imagePath,
    this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    late final Widget child;

    if (imagePath != null) {
      if (imagePath!.endsWith('.svg')) {
        child = SvgPicture.asset(
          imagePath!,
          width: 52.w,
          height: 52.h,
        );
      } else {
        child = Image.asset(
          imagePath!,
          width: 42.w,
          height: 42.h,
        );
      }
    } else {
      child = CircleAvatar(
        radius: 24.r,
        backgroundColor: BackgroundColors.backgroundBrandPrimary,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            iconData,
            size: 26.w,
            color: IconColors.iconBrandOnbrand,
          ),
        ),
      );
    }

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: child,
    );
  }
}
