import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter/material.dart';

class ContactBtn extends StatelessWidget {
  final ContactEntity contact;
  const ContactBtn({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    final value = contact.value;
    late final Uri uri;
    switch (contact.settingKey?.toLowerCase()) {
      case 'zalo':
        uri = Uri.parse('https://zalo.me/$value');
        return CustomSocialIconButton(
          imagePath: AppImages.zalo,
          onTap: () => launchURL(context, uri),
        );
      case 'facebook':
        uri = Uri.parse(value!);
        return CustomSocialIconButton(
          imagePath: AppImages.fb,
          onTap: () => launchURL(context, uri),
        );
      case 'hotline':
        uri = Uri(scheme: 'tel', path: value);
        return CustomSocialIconButton(
          iconData: Icons.phone,
          onTap: () => launchURL(context, uri),
        );
      case 'email':
        uri = Uri(scheme: 'mailto', path: value);
        return CustomSocialIconButton(
          iconData: Icons.email,
          onTap: () => launchURL(context, uri),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
