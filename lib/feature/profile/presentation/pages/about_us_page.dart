import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.backgroundDefaultPrimary,
      appBar: CustomAppbarSub(
        titleLeading: "Về chúng tôi",
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16.w,),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h,),
              Text(
                "Thông tin về chúng tôi",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600, 
                  fontSize: 20.sp, 
                  color: TextColors.textDefaultPrimary,
                ),
              ),
              SizedBox(height: 16.h,),
              Image.asset(
                AppImages.imgRealEstate,
                width: double.infinity,
              ),
              SizedBox(height: 16.h,),
              Text(
                "Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur.Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra.",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w400, 
                  fontSize: 17.sp, 
                  color: TextColors.textDefaultPrimary,
                ),
              ),
              SizedBox(height: 16.h,),
            ],
          ),
        )
      ),
    );
  }
}
