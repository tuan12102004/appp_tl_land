import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PolicyBloc>()..add(const GetPolicy()),
      child: Scaffold(
        appBar: CustomAppbarSub(
          titleLeading: "Điều khoản và chính sách",
        ),
        body: BlocConsumer<PolicyBloc, PolicyState>(
          listener: (context, policyState) {
            if (policyState.failure != null) {
              DisplayError.handle(
                context: context,
                errerrType: policyState.failure!.type,
                apiMessage: policyState.failure!.err,
              );
            }
          },
          builder: (context, policyState) {
            if (policyState.isLoading ||
                (policyState.policy == null && policyState.failure == null)) {
              return const StaticPageShimmer();
            }

            if (policyState.policy != null) {
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
                          "Điều khoản và chính sách của chúng tôi",
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
                          policyState.policy!.content,
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
