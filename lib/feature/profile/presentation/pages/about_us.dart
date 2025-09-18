import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/widget/about_us_content.dart';
import 'package:learn/pages/widget/custom_appbar.dart';

import 'change_password.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: const CustomAppBar(title: "Về chúng tôi"),
      body: ListView(children: [AboutUsContent()]),
    );
  }
}
