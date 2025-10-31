import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportDetailPage extends StatefulWidget {
  final FaqEntity item;
  const SupportDetailPage({super.key, required this.item});

  @override
  State<SupportDetailPage> createState() => _SupportDetailPageState();
}

class _SupportDetailPageState extends State<SupportDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FaqBloc>()..add(GetFaqDetail(id: widget.item.id)),
      child: Scaffold(
        appBar: CustomAppbarSub(
          titleLeading: widget.item.title,
        ),
        body: BlocBuilder<FaqBloc, FaqState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const StaticPageShimmer();
            }
            return SafeArea(
                minimum: EdgeInsets.all(
                  16.w,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 12.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item.title,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: TextColors.textDefaultPrimary,
                            ),
                      ),
                      Image.asset(
                        AppImages.imgSupport,
                        width: double.infinity,
                      ),
                      Text(widget.item.content,
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ));
          },
        ),
      ),
    );
  }
}
