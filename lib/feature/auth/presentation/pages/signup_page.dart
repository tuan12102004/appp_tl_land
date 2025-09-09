import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      appBar: CustomAuthAppbar(),
      logoAlignment: LogoAlignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              "Đăng ký",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Liên hệ với chúng tôi để tạo tài khoản",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSocialIconButton(
                  imagePath: AppImages.zalo,
                  onTap: () => print("Zalo tapped!"),
                ),
                SizedBox(width: 12.w),
                CustomSocialIconButton(
                  imagePath: AppImages.fb,
                  onTap: () => print("Facebook tapped!"),
                ),
                SizedBox(width: 12.w),
                CustomSocialIconButton(
                  iconData: Icons.phone,
                  onTap: () => print("Phone tapped!"),
                ),
                SizedBox(width: 12.w),
                CustomSocialIconButton(
                  iconData: Icons.email,
                  onTap: () => print("Email tapped!"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
