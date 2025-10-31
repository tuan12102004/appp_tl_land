import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SupportsList extends StatelessWidget {
  final List<FaqEntity> listContactSupport;
  const SupportsList({super.key, required this.listContactSupport});

  @override
  Widget build(BuildContext context) {
    return listContactSupport.isEmpty
        ? InfoEmpty()
        : ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => Divider(
              color: BorderColors.borderDefaultDefault.withValues(alpha: 0.3),
              height: 1.h,
              thickness: .3.w,
            ),
            itemCount: listContactSupport.length,
            itemBuilder: (context, index) {
              final item = listContactSupport[index];
              return SupportItem(
                faqTitle: item,
                onTap: () {
                  context
                      .push('/profile/support-detail', extra: {'item': item});
                },
              );
            },
          );
  }
}
