import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AboutUsBloc>()..add(const GetAboutUsInfo()),
      child: Scaffold(
        appBar: CustomAppbarSub(
          titleLeading: "Về chúng tôi",
        ),
        body: BlocConsumer<AboutUsBloc, AboutUsState>(
          listener: (context, aboutUsState) {
            if (aboutUsState.failure != null) {
              DisplayError.handle(
                context: context,
                errerrType: aboutUsState.failure!.type,
                apiMessage: aboutUsState.failure!.err,
              );
            }
          },
          builder: (context, aboutUsState) {
            if (aboutUsState.isLoading ||
                (aboutUsState.info == null && aboutUsState.failure == null)) {
              return const StaticPageShimmer();
            }

            if (aboutUsState.info != null) {
              return SafeArea(
                  minimum: EdgeInsets.all(
                    16.r,
                  ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      spacing: 16.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Thông tin về chúng tôi",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.sp,
                                    color: TextColors.textDefaultPrimary,
                                  ),
                        ),
                        Image.asset(
                          AppImages.imgSupport,
                          width: double.infinity,
                        ),
                        Text(
                          aboutUsState.info!.content,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17.sp,
                                    color: TextColors.textDefaultPrimary,
                                  ),
                        ),
                      ],
                    ),
                  ));
            }
            return InfoEmpty();
          },
        ),
      ),
    );
  }
}
