import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/widget/custom_appbar.dart';
import 'package:learn/pages/widget/policy_content.dart';

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
      appBar: const CustomAppBar(title: "Điều khoản và chính sách"),
      body: ListView(children: [PolicyContent()]),
    );
  }
}
