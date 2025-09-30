import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactSignupList extends StatelessWidget {
  final List<ContactSignupEntity> contacts;
  const ContactSignupList({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => SizedBox(width: 12.w),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return _buildContactButton(context, contact);
          }),
    );
  }

  Widget _buildContactButton(
      BuildContext context, ContactSignupEntity contact) {
    final value = contact.value;
    late final Uri uri;
    switch (contact.settingKey.toLowerCase()) {
      case 'zalo':
        uri = Uri.parse('https://zalo.me/$value');
        return CustomSocialIconButton(
          imagePath: AppImages.zalo, 
          onTap: () => launchURL(context, uri),
        );
      case 'facebook':
        uri = Uri.parse(value);
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
