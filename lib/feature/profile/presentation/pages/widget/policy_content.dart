import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolicyContent extends StatelessWidget {
  const PolicyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB( 16.w, 16.h, 16.w, 16.h),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Làm thế nào để đổi mật khẩu",style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black
            ),),
            Container(
              height: 300.h,
              width: 361.w,
              margin: EdgeInsets.fromLTRB( 0.w, 12.h, 0.w, 12.h),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0xff000000),
                      width: 0.1.w
                  )
              ),
            ),
            Text("Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra.\n \n"

                "Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra \n \n"

                "Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra.\n \n"

                "Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra",style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000)
            ),)
          ]
      ),
    );
  }
}
