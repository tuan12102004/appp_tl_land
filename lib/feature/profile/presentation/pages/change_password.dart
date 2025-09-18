import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/widget/custom_appbar.dart';
import 'package:learn/pages/widget/custom_button.dart';
import 'package:learn/pages/widget/custom_inputfield.dart';

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
    // TODO: implement dispose
    _passwordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: const CustomAppBar(title: "Đổi mật khẩu"),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 12.h),
            CustomInputField(
              hintText: "Mật khẩu hiện tại",
              controller: _passwordController,
              keyboardType: TextInputType.name,
              icon: Icons.remove_red_eye,
              hintStyle: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000).withValues(alpha: 0.3),
              ),
            ),
            CustomInputField(
              hintText: "Mật khẩu mới",
              controller: _newPasswordController,
              keyboardType: TextInputType.name,
              icon: Icons.remove_red_eye,
              hintStyle: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000).withValues(alpha: 0.3),
              ),
            ),
            CustomInputField(
              hintText: "Nhập lại mật khẩu mới",
              controller: _confirmPasswordController,
              keyboardType: TextInputType.name,
              icon: Icons.remove_red_eye,
              hintStyle: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000).withValues(alpha: 0.3),
              ),
            ),
            NoticeMessage(),
            CustomButton(
              color: Colors.white,
              text: "Dổi mật khẩu",
              onPressed: () {},
              background: Color(0xff179BE0),
            ),
          ],
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
