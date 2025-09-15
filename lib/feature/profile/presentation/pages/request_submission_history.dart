import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestSubmissionHistory extends StatefulWidget {
  const RequestSubmissionHistory({super.key});

  @override
  State<RequestSubmissionHistory> createState() => _RequestSubmissionHistoryState();
}

class _RequestSubmissionHistoryState extends State<RequestSubmissionHistory> {
  int selectedIndex = 0;
  final DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: const CustomAppBar(title: "Bất động sản của tôi"),
      body: ListView(
        children: [
          _requestStatusTabs(),
          if(selectedIndex == 0)...[
            ...List.generate(4, (index) {
              return CustomListCard(now: now);
            },)
          ],
          if(selectedIndex == 1)...[
            ...List.generate(4, (index) {
              return CustomListCard(now: now);
            },)
          ],
          if(selectedIndex == 2)...[
            ...List.generate(4, (index) {
              return CustomListCard(now: now);
            },)
          ]
        ]
      ),
    );
  }
  Widget _requestStatusTabs(){
    return Container(
        height: 36.h,
        width: 360.w,
        margin: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
        color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Container(
                width: 120.w,
                height: 36.h,
                color: selectedIndex == 0 ? Color(0xff34C759) : Colors.white,
                child: Center(
                    child: Text("Chờ duyệt",style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: selectedIndex == 0 ? Colors.white : Color(0xff34C759)
                    ))
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Container(
                width: 120.w,
                height: 36.h,
                color: selectedIndex == 1 ? Color(0xff179BE0) : Colors.white,
                child: Center(
                    child: Text("Đã duyệt",style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: selectedIndex == 1 ? Colors.white : Color(0xff179BE0)
                    ))
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Container(
                width: 120.w,
                height: 36.h,
                color: selectedIndex == 2 ? Color(0xffFF3B30) : Colors.white,
                child: Center(
                    child: Text("Từ chối",style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: selectedIndex == 2 ? Colors.white : Color(0xffFF3B30)
                    ))
                ),
              ),
            ),
          ],
        )
    );
  }
}

class CustomListCard extends StatelessWidget {
  const CustomListCard({
    super.key,
    required this.now,
  });

  final DateTime now;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126.h,
      width: 360.w,
      margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        color: Color(0xffE1F1FD),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
        child: SizedBox(
          height: 94.h,
          width: 328.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("570tr nhận nhà trước tết, HTLS 0% 18 tháng, căn 1PN+1 full đồ S2.17 Vinhhomes",style: TextStyle(
                fontSize: 16.5.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ngày gửi: ${now.day}/${now.month}/${now.year} ",style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  )),
                  Container(
                    width: 70.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: Color(0xff179BE0),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Center(
                      child: Text("Chi tiết",style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),),
                    ),
                    ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
                Icons.arrow_back_ios, color: Color(0xff179BE0),size: 24.sp,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff179BE0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

