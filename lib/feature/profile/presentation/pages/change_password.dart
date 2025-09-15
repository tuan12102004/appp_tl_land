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
  final TextEditingController _confirmPasswordController = TextEditingController();
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
            CustomInputField(
              hintText: "Mật khẩu hiện tại",
              controller: _passwordController,
              keyboardType: TextInputType.name,
            ),
            CustomInputField(
              hintText: "Mật khẩu mới",
              controller: _newPasswordController,
              keyboardType: TextInputType.name,
            ),
            CustomInputField(
              hintText: "Nhập lại mật khẩu mới",
              controller: _confirmPasswordController,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 16.h,),
            NoticeMessage(),
            ChangePasswordButton()
          ]
        )
      )
    );
  }
}

class NoticeMessage extends StatelessWidget {
  const NoticeMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.sp),
      child: Row(
        children: [
          Icon(Icons.info,size: 18.sp,color: Color(0xff000000).withValues(alpha: 0.5)),
          SizedBox(width: 2.15.w,),
          Text("Lưu ý: Bạn sẽ phải đăng nhập lại sau khi đổi mật khẩu",style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000).withValues(alpha: 0.5)
          ),)
        ],
      ),
    );
  }
}
class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    this.controller,
  });

  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 16.w),
      child: SizedBox(
        width: 360.w,
        height: 44.h,
        child: TextField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: Colors.black.withValues(alpha: 0.5),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black.withValues(alpha: 0.3),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.black.withValues(alpha: 0.1),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.black.withValues(alpha: 0.1),
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: 361.w,
        margin: EdgeInsets.fromLTRB(14.w, 20.h, 14.w, 20.h),
        decoration: BoxDecoration(
          color: Color(0xff179BE0),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Text("Đổi mật khẩu",style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ))
        )
    );
  }
}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
                Icons.arrow_back_ios, color: Color(0xff179BE0),size: 24.sp,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff179BE0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


