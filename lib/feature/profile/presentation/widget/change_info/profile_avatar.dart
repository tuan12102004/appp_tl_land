import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileAvatar extends StatelessWidget {
  final String avatar;
  final VoidCallback onPickImage;

  const ProfileAvatar({
    super.key,
    required this.onPickImage,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPickImage,
      child: Center(
        child: Stack(
          children: [
            UserAvatar(
              type: AvatarType.large,
              imageURL: avatar,
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
}