import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/pages/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationDetailPage extends StatefulWidget {
  final NotificationEntity notificationEntity;
  const NotificationDetailPage({super.key, required this.notificationEntity});

  @override
  State<NotificationDetailPage> createState() => _NotificationDetailPageState();
}

class _NotificationDetailPageState extends State<NotificationDetailPage> {
  @override
  Widget build(BuildContext context) {
    final noti = widget.notificationEntity;
    return Scaffold(
      appBar: CustomAppbarSub(
        titleLeading: 'Chi tiết',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.logo,
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200.h,
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        noti.title,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700, 
                        fontSize: 22.sp, 
                        color: TextColors.textDefaultPrimary,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "${noti.createdAt.hour}:${noti.createdAt.minute}, ${noti.createdAt.day}/${noti.createdAt.month}/${noti.createdAt.year}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w400, 
                        fontStyle: FontStyle.italic,
                        fontSize: 15.sp, 
                        color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      noti.content,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w400, 
                        fontSize: 17.sp, 
                        color: TextColors.textDefaultPrimary,
                      ),
                    ),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
