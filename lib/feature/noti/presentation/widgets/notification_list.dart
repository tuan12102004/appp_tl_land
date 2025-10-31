import 'dart:async';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/noti_pre_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationList extends StatelessWidget {
  final ScrollController notiScrollCon;
  final List<NotificationEntity> notiList;
  final bool isLoadMore;
  final Future<bool> Function(NotificationEntity notiList) onItemDismissed;
  final VoidCallback onRefresh;

  const NotificationList(
      {super.key,
      required this.notiScrollCon,
      required this.notiList,
      required this.isLoadMore,
      required this.onItemDismissed,
      required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async => onRefresh(),
      child: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          if (notiList.isEmpty)
            SliverFillRemaining(
              key: ValueKey('empty-noti-list'),
              hasScrollBody: false,
              child: InfoEmpty(
                text: 'thông báo',
                hasIcon: true,
              ),
            )
          else
            SliverList.separated(
              key: ValueKey('noti-list'),
              itemBuilder: (context, index) {
                if (index >= notiList.length) {
                  // Hiển thị một widget loading ở cuối danh sách
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final noti = notiList[index];
                return Column(children: [
                  Dismissible(
                      key: ObjectKey(noti),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        decoration: BoxDecoration(
                            color: BackgroundColors.backgroundErrorSecondary),
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(right: 20.w),
                        child: Icon(
                          Icons.delete_outline,
                          color: IconColors.iconBrandPrimary,
                        ),
                      ),
                      confirmDismiss: (direction) async {
                        return await onItemDismissed(noti);
                      },
                      child: NotificationCard(
                        key: ValueKey('noti_item_$index'),
                        notiCard: noti,
                        onTap: () {
                          // TODO: QUA TRANG CHI TIẾT
                          context.push(
                            '/notification/detail',
                            extra: noti,
                          );
                        },
                      ))
                ]);
              },
              separatorBuilder: (_, index) {
                if (index >= notiList.length - 1) return SizedBox.shrink();
                return Divider(
                  height: 1.h,
                  thickness: 0.3.w,
                  color:
                      BorderColors.borderDefaultDefault.withValues(alpha: 0.2),
                );
              },
            )
        ],
      ),
    );
  }
}
