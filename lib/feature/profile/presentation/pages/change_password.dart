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
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Đổi mật khẩu",style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
            color: Color(0xff179BE0)
        ),),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Color(0xff179BE0),size: 24,)),
        centerTitle: true,
      ),
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
          Icon(Icons.info,size: 18.sp,color: Color(0xff000000).withOpacity(0.5)),
          SizedBox(width: 2.15.w,),
          Text("Lưu ý: Bạn sẽ phải đăng nhập lại sau khi đổi mật khẩu",style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000).withOpacity(0.5)
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
      padding: EdgeInsets.only(left: 16.w,top: 16.h,right: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 360.w,
            height: 44.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff000000).withOpacity(0.1)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.w, 11.h, 16.w, 11.h),
              child: TextField(
                controller: controller,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye,color: Color(0xff000000).withOpacity(0.5),),
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                      color: Color(0xff000000).withOpacity(0.3)
                  ),
                ),
              ),
            ),
          ),
        ],
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

