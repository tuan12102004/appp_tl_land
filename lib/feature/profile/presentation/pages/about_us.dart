import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widget/about_us_content.dart';

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
      appBar: const CustomAppbar(title: Text("Về chúng tôi")),
      body: ListView(children: [AboutUsContent()]),
    );
  }
}
