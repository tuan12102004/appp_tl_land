import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/pages/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatelessWidget {
  final NotificationEntity notificationEntity;
  final VoidCallback onTap;
  const NotificationCard({super.key, required this.notificationEntity, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final noti = notificationEntity;
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: noti.isRead ? Color(0xffE1F1FD) : Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1.w)),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    noti.isRead ? Icons.notifications_active : Icons.notifications,
                    color: IconColors.iconBrandPrimary,
                    size: 20.sp,
                  ),
                  SizedBox(width: 3.w),
                  Text(
                    "${noti.createdAt.hour}:${noti.createdAt.minute}, ${noti.createdAt.day}/${noti.createdAt.month}/${noti.createdAt.year}",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w400, 
                      fontStyle: FontStyle.italic,
                      fontSize: 13.sp, 
                      color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Text(
                  noti.title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600, 
                    fontSize: 13.sp, 
                    color: TextColors.textDefaultPrimary,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                notificationEntity.content,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400, 
                  fontSize: 13.sp, 
                  color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
