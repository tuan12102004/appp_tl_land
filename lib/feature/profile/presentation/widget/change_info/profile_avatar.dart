import 'dart:io';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAvatar extends StatelessWidget {
  final String avatar;
  final File? fileAvatar; 
  final VoidCallback onPickImage;

  const ProfileAvatar({
    super.key,
    required this.onPickImage,
    required this.avatar,
    this.fileAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPickImage,
      child: Center(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: _buildAvatarImage(),
            ),
            Positioned(
              bottom: 0.h,
              right: 0.w,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: BackgroundColors.backgroundButtonPrimary,
                ),
                child: Padding(
                  padding: EdgeInsets.all(7.r),
                  child: Icon(
                    Icons.edit,
                    size: 20.sp,
                    color: IconColors.iconButtonPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarImage() {
    if (fileAvatar != null) {
      return Image.file(
        fileAvatar!,
        fit: BoxFit.cover,
        height: 90.h,
        width: 90.w,
      );
    } else if (avatar.startsWith('http')) {
      return Image.network(
        avatar,
        fit: BoxFit.cover,
        height: 90.h,
        width: 90.w,
        errorBuilder: (context, error, stackTrace) => _defaultAvatar(),
      );
    } else {
      return _defaultAvatar();
    }
  }

  Widget _defaultAvatar() {
    return Image.asset(
      AppImages.defaultAvatar,
      fit: BoxFit.cover,
      height: 90.h,
      width: 90.w,
    );
  }
}