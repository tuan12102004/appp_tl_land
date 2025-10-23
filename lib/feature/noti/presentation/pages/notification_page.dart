import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationEntity {
  final int id;
  final String title;
  final String content;
  final DateTime createdAt;
  final bool isRead;

  const NotificationEntity({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    this.isRead = false,
  });
}

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationEntity> notifications = List.generate(
    10,
    (index) => NotificationEntity(
      id: index,
      title: 'Bạn đã đăng ký tài khoản thành công $index',
      content:
          "$index Bạn đã đăng ký tài khoản thành công, hãy sử dụng những tính năng mới. Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra",
      createdAt: DateTime.now(),
      isRead: index % 2 == 0,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        automaticallyImplyLeading: false,
        title: Text(
          'Thông báo',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 17.sp,
              color: TextColors.textNavigationBarDefault),
        ),
        actions: [
          PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: IconColors.iconNavigationBarEnabled,
                size: 22.sp,
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      onTap: () {
                        // TODO: Real all noti
                      },
                      child: CustomAdaptiveButton(
                        text: 'Đã đọc tất cả',
                        textColor: TextColors.textDefaultPrimary,
                        backgroundColor:
                            BackgroundColors.backgroundDefaultPrimary,
                        padding: EdgeInsets.zero,
                        isOpacity: true,
                        fontSize: 15.sp,
                        preffixWidget: Icon(Icons.mark_chat_read_sharp,
                            color: IconColors.iconNavigationBarEnabled,
                            size: 24.sp),
                        onPressed: () {
                          // TODO: Real all noti
                        },
                      )),
                  PopupMenuItem(
                      onTap: () {
                        // TODO: Delete all noti
                      },
                      child: CustomAdaptiveButton(
                        text: 'Xóa tất cả',
                        textColor: TextColors.textDefaultPrimary,
                        backgroundColor:
                            BackgroundColors.backgroundDefaultPrimary,
                        padding: EdgeInsets.zero,
                        isOpacity: true,
                        fontSize: 15.sp,
                        preffixWidget: Icon(Icons.delete,
                            color: IconColors.iconErrorPrimary, size: 24.sp),
                        onPressed: () {
                          // TODO: Delete all noti
                        },
                      )),
                ];
              })
        ],
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: 0.3.h,
              color:
                  BorderColors.borderSeparatorNonOpaque.withValues(alpha: 0.2),
            );
          },
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final noti = notifications[index];
            if (index == notifications.length - 1) {
              return SizedBox(height: 40.h);
            }
            return NotificationCard(
              notificationEntity: noti,
              onTap: () {
                // TODO: QUA TRANG CHI TIẾT
                context.push(
                  '/notification/detail',
                  extra: noti,
                );
              },
            );
          }),
    );
  }
}
