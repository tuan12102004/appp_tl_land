import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../enums/avatar_type.dart';

extension AvatarTypeExtension on AvatarType {
  Size get getSizeByType {
    switch (this) {
      case AvatarType.small:
        return Size(42.w, 42.h);
      case AvatarType.medium:
        return Size(52.w, 52.h);
      case AvatarType.large:
        return Size(92.w, 92.h);
      case AvatarType.extraLarge:
        return Size(120.w, 120.h);
    }
  }
}
