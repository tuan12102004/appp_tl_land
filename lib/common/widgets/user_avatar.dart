import 'dart:io';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String? imageURL;
  final AvatarType type;

  const UserAvatar({
    super.key,
    required this.type,
    this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = imageURL != null &&
        imageURL!.isNotEmpty &&
        imageURL != AppImages.defaultAvatar;

    return Container(
      width: type.getSizeByType.width,
      height: type.getSizeByType.height,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BackgroundColors.backgroundDefaultTertiary,
      ),
      child: ClipOval(
        child: hasImage
            ? _buildImage(imageURL!)
            : Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildImage(String path) {
    if (path.isEmpty || path == AppImages.defaultAvatar) {
      return Image.asset(AppImages.defaultAvatar, fit: BoxFit.cover);
    }

    if (path.startsWith('http')) {
      return CustomCachedImage(imagePath: path, fit: BoxFit.cover);
    }

    // Ưu tiên hiển thị dưới dạng file cục bộ trước.
    if (path.startsWith('/')) {
      return Image.file(
        File(path),
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          final String imageUrl = ApiUrls.imageUrl + path;
          return CustomCachedImage(imagePath: imageUrl, fit: BoxFit.cover);
        },
      );
    }

    return Image.asset(path, fit: BoxFit.cover);
  }
}
