import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/blocs/notification_bloc.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/shimmer/static_page_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationDetailPage extends StatefulWidget {
  final NotificationEntity notificationEntity;
  const NotificationDetailPage({super.key, required this.notificationEntity});

  @override
  State<NotificationDetailPage> createState() => _NotificationDetailPageState();
}

class _NotificationDetailPageState extends State<NotificationDetailPage> {
  late final NotificationBloc _notiBloc;

  @override
  void initState() {
    _notiBloc = sl<NotificationBloc>()
      ..add(GetNotificationDetail(id: widget.notificationEntity.id));
    super.initState();
  }

  @override
  void dispose() {
    _notiBloc.close();
    super.dispose();
  }

  NotificationEntity? get _resultOnPop {
    // Lấy ra trạng thái hiện tại của BLoC
    final currentState = _notiBloc.state;
    // trả về thông báo đã cập nhật, không có = trả về cái cũ
    return currentState.selectedNotification ?? widget.notificationEntity;
  }

  @override
  Widget build(BuildContext context) {
    final noti = widget.notificationEntity;
    return BlocProvider(
      create: (context) => _notiBloc,
      child: PopScope(
        canPop: true,
        child: Scaffold(
          appBar: CustomAppbarSub(
            titleLeading: 'Chi tiết',
            onLeading: () {
              if (context.canPop()) {
                context.pop(_resultOnPop);
              }
            },
          ),
          body: BlocConsumer<NotificationBloc, NotificationState>(
            listener: (context, state) {
              if (context.mounted && state.failure?.type != null) {
                DisplayError.handle(
                    context: context,
                    errerrType: state.failure!.type,
                    apiMessage: state.failure!.err);
              }
            },
            builder: (context, state) {
              if (state.isLoading && state.notifications.isEmpty) {
                // return const Center(child: CircularProgressIndicator());
                return const StaticPageShimmer();
              }
              return SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppImages.logo,
                          fit: BoxFit.contain,
                          width: double.infinity,
                          height: 200.h,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                noti.title ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.sp,
                                      color: TextColors.textDefaultPrimary,
                                    ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "${noti.createdAt?.hour}:${noti.createdAt?.minute}, ${noti.createdAt?.day}/${noti.createdAt?.month}/${noti.createdAt?.year}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15.sp,
                                      color: TextColors.textDefaultSecondary
                                          .withValues(alpha: 0.5),
                                    ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                noti.message ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17.sp,
                                      color: TextColors.textDefaultPrimary,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
