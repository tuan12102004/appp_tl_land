import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/widget/custom_appbar.dart';
import 'package:learn/pages/widget/support_detail_content.dart';

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
      body: ListView(children: [SupportDetailContent()]),
    );
  }
}
