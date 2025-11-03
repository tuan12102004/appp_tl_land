import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {
  final NotificationEntity notiCard;
  final VoidCallback onTap;
  const NotificationCard(
      {super.key, required this.notiCard, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bool isRead = notiCard.status == 1;
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isRead
              ? BackgroundColors.backgroundBrandTertiary
              : BackgroundColors.backgroundDefaultPrimary,
          border: Border(
              bottom: BorderSide(
                  color: BorderColors.borderSeparatorNonOpaque, width: .3.w)),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    !isRead ? Icons.notifications_active : Icons.notifications,
                    color: IconColors.iconBrandPrimary,
                    size: 20.sp,
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    formatDateTime(notiCard.createdAt ?? DateTime.now()),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontStyle: FontStyle.italic,
                          fontSize: 13.sp,
                          color: TextColors.textDefaultSecondary
                              .withValues(alpha: 0.5),
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Text(
                  notiCard.title ?? '',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                notiCard.message ?? '',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 13.sp,
                      color: TextColors.textDefaultSecondary
                          .withValues(alpha: 0.5),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
