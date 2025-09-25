import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widget/policy_content.dart';

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
      appBar: const CustomAppbar(title: Text("Điều khoản và chính sách")),
      body: ListView(children: [PolicyContent()]),
    );
  }
}
