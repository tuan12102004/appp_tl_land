import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationDetail extends StatefulWidget {
  const NotificationDetail({super.key});

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  final timeData = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_new_outlined, color: Color(0xff179BE0), size: 18.sp,)),
                  Text("Chi tiết",style: TextStyle(
                      color: Color(0xff179BE0),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400
                  ),)
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xffE1F1FD),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.1.w,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Căn nhà Mặt tiền",style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    ),),
                    Row(
                      children: [
                        Text(
                          "${timeData.hour}:${timeData.minute},",
                          style: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "${timeData.day}/${timeData.month}/${timeData.year}",
                          style: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
