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
  final Function(NotificationEntity) onItemTapped;
  final VoidCallback onRefresh;

  const NotificationList(
      {super.key,
      required this.notiScrollCon,
      required this.notiList,
      required this.isLoadMore,
      required this.onItemDismissed,
      required this.onRefresh,
      required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async => onRefresh(),
      child: CustomScrollView(
        controller: notiScrollCon,
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
            SliverList.builder(
              key: ValueKey('noti-list'),
              itemCount: notiList.length + (isLoadMore ? 1 : 0),
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
                          onTap: () => onItemTapped(noti)))
                ]);
              },
            )
        ],
      ),
    );
  }
}
