import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/contact/supports_list.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactSupportPage extends StatefulWidget {
  const ContactSupportPage({super.key});

  @override
  State<ContactSupportPage> createState() => _ContactSupportPageState();
}

class _ContactSupportPageState extends State<ContactSupportPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ContactBloc>()..add(const GetContacts()),
        ),
        BlocProvider(
          create: (context) => sl<FaqBloc>()..add(const GetFaqs()),
        ),
      ],
      child: Scaffold(
        appBar: CustomAppbarSub(
          titleLeading: "Liên hệ và hỗ trợ",
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<ContactBloc, ContactState>(
              listener: (context, contactState) {
                if (contactState.failure != null) {
                  DisplayError.handle(
                    context: context,
                    errerrType: contactState.failure!.type,
                    apiMessage: contactState.failure!.err,
                  );
                }
              },
            ),
            BlocListener<FaqBloc, FaqState>(
              listener: (context, faqSate) {
                if (faqSate.failure != null) {
                  DisplayError.handle(
                    context: context,
                    errerrType: faqSate.failure!.type,
                    apiMessage: faqSate.failure!.err,
                  );
                }
              },
            ),
          ],
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.r),
                    child: Column(
                      spacing: 24.h,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(AppImages.logo),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          spacing: 20.h,
                          children: [
                            Text(
                              "Liên hệ với chúng tôi",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.sp,
                                  ),
                            ),
                            BlocBuilder<ContactBloc, ContactState>(
                              builder: (context, contactState) {
                                if (contactState.isLoading ||
                                    contactState.contacts.isEmpty &&
                                        contactState.failure == null) {
                                  return const ContactSignupShimmer();
                                }
                                return ContactList(
                                    contacts: contactState.contacts);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: BasicColors.gray50,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: Column(
                        spacing: 8.h,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Chúng tôi có thể giúp gì cho bạn ?",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.sp,
                                ),
                          ),
                          Text(
                            "Chúng tôi luôn sẵn sàng phục vụ và hỗ trợ bạn",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: TextColors.textDefaultSecondary),
                          )
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<FaqBloc, FaqState>(
                    builder: (context, faqState) {
                      if (faqState.isLoading) {
                        return const FaqsListShimmer();
                      }
                      return SupportsList(
                        listContactSupport: faqState.faqs ?? [],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
