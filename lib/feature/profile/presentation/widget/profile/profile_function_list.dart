import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileFunctionList extends StatelessWidget {
  final List<ProfileItem> items;

  const ProfileFunctionList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => Divider(
              height: 1.h,
              thickness: .3.w,
              color:
                  BorderColors.borderSeparatorNonOpaque.withValues(alpha: 0.2),
            ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ProfileItem(
              icon: item.icon, title: item.title, onTap: item.onTap);
        });
  }
}
