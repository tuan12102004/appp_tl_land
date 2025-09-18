import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/support_detail.dart';
import 'package:learn/pages/widget/custom_appbar.dart';

class ContactSupport extends StatefulWidget {
  const ContactSupport({super.key});

  @override
  State<ContactSupport> createState() => _ContactSupportState();
}

class _ContactSupportState extends State<ContactSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Liên hệ và hỗ trợ"),
      body: ListView(
        children: [
          ContactCard(),
          SupportHeader(),
          ...List.generate(10, (index) {
            return OptionTile();
          }),
        ],
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  const OptionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 392.w,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.1.w),
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SupportDetail()),
              );
            },
            child: Container(
              height: 18.h,
              width: 332.w,
              margin: EdgeInsets.only(right: 10.w),
              child: Text(
                "Làm thế nào để đổi mật khẩu",
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 18.sp, color: Color(0xff615358)),
        ],
      ),
    );
  }
}

class SupportHeader extends StatelessWidget {
  const SupportHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.h,
      width: 392.w,
      color: Color(0xffF8F8F8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.h,
            width: 313.w,
            child: Center(
              child: Text(
                "Chúng tôi có thể giúp gì cho bạn ?",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            height: 22.h,
            width: 392.w,
            margin: EdgeInsets.only(top: 6.h),
            child: Center(
              child: Text(
                "Chúng tôi luôn sẵn sàng phục vụ và hỗ trợ bạn",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000).withValues(alpha: 0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224,
      width: 392,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 100.w,
              height: 100.h,
              margin: EdgeInsets.only(bottom: 8.h),
              child: Image.asset("assets/logoTL.png"),
            ),
          ),
          Center(
            child: Text(
              'Liên hệ với chúng tôi',
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageSupport(text: "assets/images/logo.png"),
              ImageSupport(text: "assets/images/logo.png"),
              ImageSupport(text: "assets/images/logo.png"),
              ImageSupport(text: "assets/images/logo.png"),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageSupport extends StatelessWidget {
  const ImageSupport({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 42.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.1.w),
        borderRadius: BorderRadius.circular(21.sp),
      ),
      margin: EdgeInsets.only(right: 3.59.w, left: 16.w),
      child: Image.asset(text, height: 42.h, width: 42.w),
    );
  }
}
