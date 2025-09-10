<<<<<<< HEAD:lib/feature/noti/presentation/notification.dart
import 'package:app_tl_land_3212/feature/noti/presentation/widgets/notification_widgtet.dart';
=======

import 'package:app_tl_land_3212/feature/noti/presentation/widgets/notification_widget.dart';
>>>>>>> a840e3bb500c852c9e441f41140328c54b822f1e:lib/feature/noti/presentation/pages/notification.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/widget/notification_widgtet.dart';
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
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Thông báo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: [
              PopupMenuButton<String>(
                  icon: Icon(Icons.more_vert, color: Color(0xff179BE0),size: 22.sp,),
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
                            Icon(Icons.mark_chat_read_sharp, color: Color(0xff179BE0), size: 24.sp),
                            SizedBox(width: 10.w,),
                            Text("Đã đọc tất cả",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                          ],
                        ),),
                      PopupMenuItem(child: Row(
                        children: [
                          Icon(Icons.delete, color: Colors.red,size: 24.sp,),
                          SizedBox(width: 10.w,),
                          Text("Xóa tất cả",style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),)
                    ];
                  }
              )
            ]
        ),
        body: ListView(
            children: [
              NotificationWidget()
            ]
        )
    );
  }
}
