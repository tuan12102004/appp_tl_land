import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.backgroundNavigationBarDefaultSolid,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.sp),
                    child: Image.asset(
                      AppImages.defaultAvatar,
                      height: 55.h,
                      width: 55.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(  width: 12.w,),
                  Text(
                    "Đinh Trọng Phúc",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600, 
                      fontSize: 16.sp, 
                      color: TextColors.textDefaultPrimary,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 6.h,
              color: BorderColors.borderSeparatorOpaque,
            ),
            ProfileItem(
              onTap: () => context.push('/profile/change-info',),
              icon: Icons.person,
              title: "Hồ sơ của tôi",
            ),
            ProfileItem(
              onTap: () => context.push('/profile/change-pass',),
              icon: Icons.lock,
              title: "Đổi mật khẩu",
            ),
            ProfileItem(
              onTap: () => context.push('/profile/request-submission',),
              icon: Icons.house,
              title: "Bất động sản của tôi",
            ),
            ProfileItem(
              onTap: () => context.push('/profile/about-us',),
              icon: Icons.business,
              title: "Về chúng tôi",
            ),
            ProfileItem(
              onTap: () => context.push('/profile/contact-support',),
              icon: Icons.phone,
              title: "Liên hệ và hỗ trợ",
            ),
            ProfileItem(
              onTap: () => context.push('/profile/policy',),
              icon: Icons.bookmark_border,
              title: "Điều khoản và chính sách",
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w, vertical: 14.h),
              child: CustomAdaptiveButton(
                isOpacity: true,
                onPressed: () {
                  // TODO: LOGOUT
                },
                text: "Đăng xuất",
                textColor: TextColors.textErrorPrimary,
                fontSize: 17.sp,
                backgroundColor: BackgroundColors.backgroundDefaultPrimary,
              ),
            )
          ]
        )
      ),
    );
  }
}