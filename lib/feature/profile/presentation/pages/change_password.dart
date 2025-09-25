import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/common/widgets/custom_appbar.dart';
import 'package:app_tl_land_3212/common/widgets/custom_input_field.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: const CustomAppbar(title: Text('Đổi mật khẩu')),
      body: SafeArea(
        minimum: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16.h,
            children: [
              CustomInputField(
                hintText: "Mật khẩu hiện tại",
                controller: _passwordController,
                keyboardType: TextInputType.name,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  size: 22.sp,
                  color: AppColors.iconDefaultSecondary,
                ),
              ),
              CustomInputField(
                hintText: "Mật khẩu mới",
                controller: _newPasswordController,
                keyboardType: TextInputType.name,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  size: 22.sp,
                  color: AppColors.iconDefaultSecondary,
                ),
              ),
              CustomInputField(
                hintText: "Nhập lại mật khẩu mới",
                controller: _confirmPasswordController,
                keyboardType: TextInputType.name,
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  size: 22.sp,
                  color: AppColors.iconDefaultSecondary,
                ),
              ),
              NoticeMessage(),
              CustomAdaptiveButton(
                text: "Dổi mật khẩu",
                width: double.infinity,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoticeMessage extends StatelessWidget {
  const NoticeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.sp, top: 16.sp),
      child: Row(
        children: [
          Icon(
            Icons.info,
            size: 18.sp,
            color: Color(0xff000000).withValues(alpha: 0.5),
          ),
          SizedBox(width: 2.15.w),
          Text(
            "Lưu ý: Bạn sẽ phải đăng nhập lại sau khi đổi mật khẩu",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000).withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
