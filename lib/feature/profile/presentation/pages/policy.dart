import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widget/policy_content.dart';

class Policy extends StatefulWidget {
  const Policy({super.key});

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Color(0xff179BE0), size: 24.sp),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(minWidth: 0, minHeight: 0),
        ),
        title: Text(
          "Điều khoản và chính sách",
          style: TextStyle(fontSize: 17.sp, color: Color(0xff179BE0),fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          PolicyContent(),
        ],
      ),
    );
  }
}
