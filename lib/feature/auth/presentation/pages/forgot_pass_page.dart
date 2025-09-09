import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key, required this.onContinue});
  final void Function(BuildContext context, String email) onContinue;

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCon = TextEditingController();
  final _emailNode = FocusNode();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    _emailCon.dispose();
    _emailNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Scaffold(
        appBar: CustomAuthAppbar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 64.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 24.h),
                child: Column(
                  children: [
                    Text(
                      'Quên mật khẩu',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Cung cấp email đã đăng ký để lấy lại mật khẩu của bạn',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 20.sp,
                          color: TextColors.textDefaultSecondary),
                    )
                  ],
                ),
              ),
              ForgotPassForm(
                  formKey: _formKey,
                  emailNode: _emailNode,
                  emailCon: _emailCon),
            ],
          ),
        ),
      ),
    );
  }
}
