import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactSocial extends StatelessWidget {
  final VoidCallback onOpenZalo;
  final VoidCallback onOpenFacebook;
  final VoidCallback onOpenPhone;
  final VoidCallback onOpenMessenger;
  const ContactSocial({
    super.key,
    required this.onOpenZalo,
    required this.onOpenFacebook,
    required this.onOpenPhone,
    required this.onOpenMessenger,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16.w,
      children: [
        GestureDetector(
          onTap: onOpenZalo,
          child: Image.asset(
            AppImages.zalo,
            width: 42.w,
            height: 42.h,
          ),
        ),
        GestureDetector(
          onTap: onOpenFacebook,
          child: Image.asset(
            AppImages.facebook,
            width: 46.w,
            height: 46.h,
          ),
        ),
        GestureDetector(
          onTap: onOpenPhone,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: BackgroundColors.backgroundBrandPrimary,
            ),
            child: SizedBox(
              width: 46.w,
              height: 46.h,
              child: Icon(
                Icons.phone,
                size: 26.w,
                color: IconColors.iconBrandOnbrand,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onOpenMessenger,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: BackgroundColors.backgroundBrandPrimary,
            ),
            child: SizedBox(
              width: 46.w,
              height: 46.h,
              child: Icon(
                Icons.email,
                size: 26.w,
                color: IconColors.iconBrandOnbrand,
              ),
            ),
          ),
        ),
      ],
    );
  }
}