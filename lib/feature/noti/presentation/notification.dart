
import 'package:app_tl_land_3212/feature/noti/presentation/widgets/notification_widgtet.dart';
import 'package:flutter/material.dart';

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
          title: const Text(
            'Thông báo',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            PopupMenuButton<String>(
                icon: Icon(Icons.more_vert),
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
                          Icon(Icons.mark_chat_read_sharp, color: Color(0xff179BE0)),
                          SizedBox(width: 10,),
                          Text("Đã đọc tất cả")
                        ],
                      ),),
                    PopupMenuItem(child: Row(
                      children: [
                        Icon(Icons.delete, color: Colors.red),
                        SizedBox(width: 10,),
                        Text("Xóa tất cả")
                      ],
                    ),)
                  ];
                }
            )
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NotificationWidget()
            ]
        ),
      ),
    );
  }
}
