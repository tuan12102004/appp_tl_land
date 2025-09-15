import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie/pages/widget/support_detail_content.dart';

class SupportDetail extends StatefulWidget {
  const SupportDetail({super.key});

  @override
  State<SupportDetail> createState() => _SupportDetailState();
}

class _SupportDetailState extends State<SupportDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: const CustomAppBar(title: "Làm thế nào để đổi mật khẩu"),
      body: ListView(
        children: [
          SupportDetailContent()
        ],
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

