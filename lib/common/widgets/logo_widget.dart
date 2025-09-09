import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';

class CircleLogoWidget extends StatelessWidget {
  const CircleLogoWidget({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary,
      ),
      child: Image.asset(
        AppImages.logo,
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}
