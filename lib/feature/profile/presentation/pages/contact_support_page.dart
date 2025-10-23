import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/contact/contact_social.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/contact/support_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ContactSupportEntity{
  String title;
  String content;
  String imageUrl;

  ContactSupportEntity(
    this.title,
    this.content,
    this.imageUrl
  );
}

class ContactSupportPage extends StatefulWidget {
  const ContactSupportPage({super.key});

  @override
  State<ContactSupportPage> createState() => _ContactSupportPageState();
}
class _ContactSupportPageState extends State<ContactSupportPage> {
  // Fake dữ liệu
  List<ContactSupportEntity> listContactSupport = List.generate(
    10, 
    (index) => ContactSupportEntity(
      "Làm thế nào để đổi mật khẩu",
      "Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra Lorem ipsum dolor sit amet consectetur. Erat ornare massa tincidunt vitae viverra.",
      AppImages.imgRealEstate
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarSub(
        titleLeading: "Về chúng tôi",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 16.h,),
              Image.asset(
                AppImages.logo,
                width: 100.w,
                height: 100.h,
              ),
              SizedBox(height: 24.h,),
              Text(
                "Liên hệ với chúng tôi",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600, 
                  fontSize: 20.sp, 
                  color: TextColors.textDefaultPrimary,
                ),
              ),
              SizedBox(height: 24.h,),

              // TODO: CONTACT SOCIAL
              ContactSocial(
                onOpenZalo: () {},
                onOpenFacebook: () {},
                onOpenPhone: () {},
                onOpenMessenger: () {
                  
                },
              ),
              SizedBox(height: 16.h),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: BorderColors.borderDefaultDefault.withValues(alpha: 0.03),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Chúng tôi có thể giúp gì cho bạn ?",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w600, 
                          fontSize: 20.sp, 
                          color: TextColors.textDefaultPrimary,
                        ),
                      ),
                      SizedBox(height: 8.h,),
                      Text(
                        "Chúng tôi luôn sẵn sàng phục vụ và hỗ trợ bạn",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w400, 
                          fontSize: 17.sp, 
                          color: TextColors.textDefaultSecondary.withValues(alpha: 0.5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Divider(
                  color: BorderColors.borderDefaultDefault.withValues(alpha: 0.3), 
                  height: 0.3.w
                ),
                itemCount: listContactSupport.length,
                itemBuilder: (context, index) {
                  final item = listContactSupport[index];
                  return SupportItem(
                    title: item.title,
                    onTap: () {
                      context.push(
                        '/profile/support-detail',
                        extra: {
                          'item': item
                        }
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 16.h,)
            ],
          ),
        ),
      ),
    );
  }
}