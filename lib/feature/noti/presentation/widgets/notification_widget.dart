import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/notification_detail.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  IconData _icon() {
    final random = Random();
    final icon = [Icons.notifications, Icons.notifications_active];
    return icon[random.nextInt(icon.length)];
  }

  final timeData = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          10,
              (index) {
            final iconRandom = _icon();
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationDetail(),));
              },
              child: Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: iconRandom == Icons.notifications_active
                      ? Color(0xffE1F1FD)
                      : Colors.white,
                  border: Border(bottom: BorderSide(color: Colors.grey, width: 1.w)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(iconRandom, color: Color(0xff179BE0), size: 24.sp,),
                          SizedBox(width: 3.w),
                          Text(
                            "${timeData.hour}:${timeData.minute},",
                            style: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontStyle: FontStyle.italic,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 2.25.w),
                          Text(
                            "${timeData.day}/${timeData.month}/${timeData.year}",
                            style: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontStyle: FontStyle.italic, fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Text("Bạn đã đăng ký tài khoản thành công",style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 2.h),
                      Text("Bạn đã đăng ký tài khoản thành công, hãy sử dụng những tính năng mới. Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra",
                          style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.5),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
