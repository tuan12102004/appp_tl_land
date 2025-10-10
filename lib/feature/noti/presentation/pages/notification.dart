import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/widgets/noti_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String? selectedString;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        automaticallyImplyLeading: false,
        isDivider: true,
        title: Text(
          'Thông báo',
          style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
              color: AppColors.textDefaultPrimary, fontWeight: FontWeight.w600),
        ),
        actions: [
          PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Color(0xff179BE0),
                size: 22.sp,
              ),
              onSelected: (value) {
                setState(() {
                  selectedString = value;
                });
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(Icons.mark_chat_read_sharp,
                            color: Color(0xff179BE0), size: 24.sp),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Đã đọc tất cả",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 24.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Xóa tất cả",
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )
                ];
              })
        ],
      ),
      body: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (_, i) => NotiCard(),
        itemCount: 10,
      ),
    );
  }
}
