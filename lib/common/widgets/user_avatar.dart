import 'dart:io';
import 'package:app_tl_land_3212/common/common_enum_module.dart';
import 'package:app_tl_land_3212/common/common_extension_module.dart';
import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatar extends StatelessWidget {
  final AvatarType type;
  final String? imageURL;

  const UserAvatar({super.key, required this.type, this.imageURL});

  @override
  Widget build(BuildContext context) {
    final hasImage = imageURL != null && imageURL!.isNotEmpty;

    return Container(
      width: type.getSizeByType.width,
      height: type.getSizeByType.height,
      padding: EdgeInsets.all(hasImage ? 0.r : type.getPaddingByType),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BackgroundColors.backgroundDefaultTertiary,
      ),
      child: ClipOval(
        child: hasImage
            ? _buildImage(imageURL!)
            : Image.asset(AppImages.logo),
      ),
    );
  }

  Widget _buildImage(String path) {
    if (isImageUrl(path)) {
      return CustomCachedImage(
        imagePath: path,
        fit: BoxFit.cover,
      );
    }
    else if (path.startsWith('/')) {
      return Image.file(
        File(path), 
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        path,
        fit: BoxFit.cover,
      );
    }
  }
}
