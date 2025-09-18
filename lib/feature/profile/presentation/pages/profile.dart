import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/policy.dart';
import 'package:learn/pages/request_submission_history.dart';
import 'package:learn/pages/widget/custom_button.dart';
import 'about_us.dart';
import 'change_imformation.dart';
import 'change_password.dart';
import 'contact_support.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            UserTile(),
            ProfileMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangeImformation()),
                );
              },
              icon: Icons.person,
              title: "Hồ sơ của tôi",
              iconArrow: Icons.arrow_forward_ios_rounded,
            ),
            ProfileMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
              icon: Icons.lock,
              title: "Đổi mật khẩu",
              iconArrow: Icons.arrow_forward_ios_rounded,
            ),
            ProfileMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RequestSubmissionHistory(),
                  ),
                );
              },
              icon: Icons.house,
              title: "Bất động sản của tôi",
              iconArrow: Icons.arrow_forward_ios_rounded,
            ),
            ProfileMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
              icon: Icons.business,
              title: "Về chúng tôi",
              iconArrow: Icons.arrow_forward_ios_rounded,
            ),
            ProfileMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactSupport()),
                );
              },
              icon: Icons.phone,
              title: "Liên hệ và hỗ trợ",
              iconArrow: Icons.arrow_forward_ios_rounded,
            ),
            ProfileMenuItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Policy()),
                );
              },
              icon: Icons.bookmark_border,
              title: "Điều khoản và chính sách",
              iconArrow: Icons.arrow_forward_ios_rounded,
            ),
            CustomButton(
              color: Color(0xffFF3B30),
              text: "Đăng xuất",
              onPressed: () {},
              background: Color(0xffF8F8F8),
            ),
          ],
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  const UserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.w,
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.2.w),
        ),
      ),
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 12.h),
      margin: EdgeInsets.only(bottom: 6.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30.sp),
            child: Image.asset(
              "assets/images/img_support.jpg",
              height: 55.h,
              width: 55.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.w),
          Text(
            "Đinh Trọng Phúc",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.iconArrow,
    required this.onTap,
  });

  final IconData icon;
  final IconData iconArrow;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.1.w),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 16.w),
            Icon(icon, color: Colors.grey, size: 24.sp),
            SizedBox(width: 16.w),
            SizedBox(
              width: 296.w,
              child: Text(
                title,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(width: 8.w),
            Icon(
              iconArrow,
              size: 24.sp,
              color: Color(0xff000000).withValues(alpha: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
