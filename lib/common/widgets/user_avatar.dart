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
    final String imagePath = path.startsWith('/') ? ApiUrls.imageUrl + path : path;
    return CustomCachedImage(
      imagePath: imagePath,
      fit: BoxFit.cover,
    );
  }
}
