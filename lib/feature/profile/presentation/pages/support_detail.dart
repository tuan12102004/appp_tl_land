import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../widget/support_detail_content.dart';

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
      appBar: const CustomAppbar(title: Text("Làm thế nào để đổi mật khẩu")),
      body: ListView(children: [SupportDetailContent()]),
    );
  }
}
