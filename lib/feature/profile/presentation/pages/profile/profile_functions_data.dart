import 'package:app_tl_land_3212/feature/profile/presentation/widget/profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<ProfileItem> getProfileFunctions(BuildContext context) {
  return [
    ProfileItem(
      onTap: () => context.push(
        '/profile/change-info',
      ),
      icon: Icons.person,
      title: "Hồ sơ của tôi",
    ),
    ProfileItem(
      onTap: () => context.push(
        '/profile/change-pass',
      ),
      icon: Icons.lock,
      title: "Đổi mật khẩu",
    ),
    ProfileItem(
      onTap: () => context.push(
        '/profile/request-submission',
      ),
      icon: Icons.house,
      title: "Bất động sản của tôi",
    ),
    ProfileItem(
      onTap: () => context.push(
        '/profile/about-us',
      ),
      icon: Icons.business,
      title: "Về chúng tôi",
    ),
    ProfileItem(
      onTap: () => context.push(
        '/profile/contact-support',
      ),
      icon: Icons.phone,
      title: "Liên hệ và hỗ trợ",
    ),
    ProfileItem(
      onTap: () => context.push(
        '/profile/policy',
      ),
      icon: Icons.bookmark_border,
      title: "Điều khoản và chính sách",
    ),
  ];
}
