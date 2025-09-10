import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_rive_animation.dart';

class CustomCachedImage extends StatelessWidget {
  final String? imagePath;
  final double? height;
  final double? width;
  final double? iconSize;
  final BoxFit? fit;

  const CustomCachedImage({
    super.key,
    required this.imagePath,
    this.height,
    this.width,
    this.iconSize,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath == null || imagePath!.isEmpty) {
      return Image.asset(
        AppImages.logo,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
      );
    }

    return CachedNetworkImage(
      imageUrl: imagePath!,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      progressIndicatorBuilder: (context, url, progress) => CustomRiveAnimation(
        riveAnimationPath: AppRiveAnimations.simpleLoading,
      ),
      errorWidget: (context, url, error) => Image.asset(
        width: width,
        height: height,
        AppImages.logo,
        fit: fit ?? BoxFit.contain,
      ),
    );
  }
}
