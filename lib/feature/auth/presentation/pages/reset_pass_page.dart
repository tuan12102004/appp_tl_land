import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassPage extends StatefulWidget {
  final String email;
  const ResetPassPage({super.key, required this.email});

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  final _formKey = GlobalKey<FormState>();

  final _passCon = TextEditingController();
  final _confirmPassCon = TextEditingController();

  final _passNode = FocusNode();
  final _confirmPassNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Scaffold(
          appBar: CustomAuthAppbar(),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Cập nhật mật khẩu mới',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                ResetPassForm(
                  formKey: _formKey,
                  passCon: _passCon,
                  confirmPassCon: _confirmPassCon,
                  passNode: _passNode,
                  confirmPassNode: _confirmPassNode,
                ),
              ],
            ),
          )),
    );
  }
}
