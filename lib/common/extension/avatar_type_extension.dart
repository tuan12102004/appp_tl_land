import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../enums/avatar_type.dart';

extension AvatarTypeExtension on AvatarType {
  Size get getSizeByType {
    switch (this) {
      case AvatarType.small:
        return Size(42.w, 42.h);
      case AvatarType.medium:
        return Size(56.w, 56.h);
      case AvatarType.large:
        return Size(104.w, 104.h);
      case AvatarType.extraLarge:
        return Size(120.w, 120.h);
    }
  }

  double get getPaddingByType {
    switch (this) {
      case AvatarType.small:
        return 6.r;
      case AvatarType.medium:
        return 8.r;
      case AvatarType.large:
        return 14.r;
      case AvatarType.extraLarge:
        return 16.r;
    }
  }
}
