import 'dart:async';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:app_tl_land_3212/feature/noti/presentation/noti_pre_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/shimmer/card_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with AutomaticKeepAliveClientMixin {
  late final PaginatorBloc<NotificationEntity, int?> _notificationPaginatorBloc;
  late final ScrollController _notiScrollCon;
  final int _limit = 10;
  bool _isDeleteUndoActive = false;

  // ktra có tb nào chưa đọc không
  bool get hasUnreadNoti {
    final items = _notificationPaginatorBloc.state.items;
    return items.any((n) => (n.status) == 1);
  }

  // ktra có dstb không
  bool get hasNotifications {
    return _notificationPaginatorBloc.state.items.isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    // Notification list - hiện trang đầu tiên
    _loadInitialData();
    _notiScrollCon = ScrollController()
      ..addListener(() {
        final state = _notificationPaginatorBloc.state;
        if (_notiScrollCon.position.pixels ==
                _notiScrollCon.position.maxScrollExtent &&
            !state.isLoading &&
            !state.isLoadMore &&
            !state.isLastPage) {
          _loadMoreData();
        }
      });
  }

  void _loadInitialData() {
    _notificationPaginatorBloc = sl<PaginatorBloc<NotificationEntity, int?>>()
      ..add(LoadInitial<NotificationEntity, int?>(
        usecase: sl<GetNotificationsUsecase>(),
        limit: _limit,
      ));
  }

  void _loadMoreData() {
    _notificationPaginatorBloc.add(LoadMore<NotificationEntity, int?>(
      usecase: sl<GetNotificationsUsecase>(),
      limit: _limit,
    ));
  }

  @override
  void dispose() {
    _notificationPaginatorBloc.close();
    _notiScrollCon.dispose();
    super.dispose();
  }

  // TODO: _onLoadMoreWhenNotScrollable
  void _onLoadMoreWhenNotScrollable() {
    final state = _notificationPaginatorBloc.state;

    if (!_notiScrollCon.hasClients ||
        _notiScrollCon.position.maxScrollExtent > 0) {
      return;
    }

    if (_notiScrollCon.position.pixels == 0 &&
        !state.isLoadMore &&
        !state.isLoading &&
        !state.isLastPage) {
      _loadMoreData();
    }
  }

  Future<void> _popAnimation(BuildContext context) async {
    if (sl<DialogObserverBloc>().state.isDialogOpen && context.canPop()) {
      context.pop();
      sl<DialogObserverBloc>().add(const CloseTheDialog());
    }
  }

  // TODO: _onNotificationListener
  void _onNotificationListener(
      BuildContext context, NotificationState state) async {
    if (state.isLoading && state.apiAction != ApiActionType.delete) {
      if (context.mounted) {
        showAppLoading(
          context,
          riveAnimationPath: AppRiveAnimations.multiLoadingState,
          onInit: sl<MultiLoadingStateService>().init,
        );
      }
    } else if (state.failure != null) {
      sl<MultiLoadingStateService>().fireError();
      await _popAnimation(context);

      if (context.mounted && state.failure?.type != null) {
        DisplayError.handle(
            context: context,
            errerrType: state.failure!.type,
            apiMessage: state.failure!.err);
      }
    } else if (state.isSuccess && state.apiAction != ApiActionType.delete) {
      sl<MultiLoadingStateService>().fireCheck();
      await _popAnimation(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: sl<AuthBloc>(),
      builder: (context, authState) {
        return BlocConsumer<PaginatorBloc<NotificationEntity, int?>,
            PaginatorState<NotificationEntity>>(
          bloc: _notificationPaginatorBloc,
          listener: (context, notiState) {
            final dialogObserver = sl<DialogObserverBloc>();

            if (notiState.failure?.type != null &&
                !dialogObserver.state.isDialogOpen) {
              DisplayError.handle(
                context: context,
                errerrType: notiState.failure!.type,
                apiMessage: notiState.failure!.err,
              );

              if (notiState.isLoaded) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) {
                    _onLoadMoreWhenNotScrollable();
                  }
                });
              }
            }
          },
          builder: (context, notiState) {
            return BlocListener<NotificationBloc, NotificationState>(
              bloc: sl<NotificationBloc>(),
              listener: _onNotificationListener,
              child: Scaffold(
                appBar: CustomAppbar(
                  automaticallyImplyLeading: false,
                  title: Text(
                    'Thông báo',
                    style:
                        Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                              color: TextColors.textDefaultPrimary,
                              fontWeight: FontWeight.w600,
                            ),
                  ),
                  actions: [
                    PopupMenuButton<String>(
                        borderRadius: BorderRadius.circular(6.r),
                        icon: Icon(
                          Icons.more_vert,
                          color: IconColors.iconNavigationBarEnabled,
                          size: 22.sp,
                        ),
                        itemBuilder: (context) {
                          return _buildPopup(
                            context,
                            notiState.items.any((n) => (n.status) == 1),
                            notiState.items.isNotEmpty,
                          );
                        })
                  ],
                ),
                body: SafeArea(child: _buildBody(notiState)),
              ),
            );
          },
        );
      },
    );
  }

// TODO: popup menu
  List<PopupMenuEntry<String>> _buildPopup(
    BuildContext context,
    bool hasUnreadNotifications,
    bool hasNotifications,
  ) {
    return [
      PopupMenuItem(
        enabled: hasUnreadNotifications, // Chỉ bật khi có thông báo chưa đọc
        onTap: hasUnreadNotifications ? _onMarkAllAsReadPressed : null,
        child: CustomAdaptiveTapEffect(
          text: 'Đã đọc tất cả',
          textColor: hasUnreadNotifications
              ? TextColors.textDefaultPrimary
              : TextColors.textButtonDisabled,
          isOpacity: true,
          fontSize: 16.sp,
          preffixWidget: Icon(Icons.mark_chat_read_sharp,
              color: IconColors.iconNavigationBarEnabled, size: 24.sp),
        ),
      ),
      PopupMenuItem(
          enabled: hasNotifications, // Chỉ bật khi có ít nhất một thông báo
          onTap: hasNotifications ? () => _onDeleteAllPressed(context) : null,
          child: CustomAdaptiveTapEffect(
            text: 'Xóa tất cả',
            textColor: hasNotifications
                ? TextColors.textDefaultPrimary
                : TextColors.textButtonDisabled,
            isOpacity: true,
            fontSize: 16.sp,
            preffixWidget: Icon(Icons.delete,
                color: IconColors.iconErrorPrimary, size: 24.sp),
          )),
    ];
  }

  // TODO: Api đã đọc tất cả
  void _onMarkAllAsReadPressed() {
    // Gọi API để đánh dấu tất cả là đã đọc
    sl<NotificationBloc>().add(ReadAllNotification());

    _notificationPaginatorBloc.add(
      UpdateAllItems(
        update: (item) => item.copyWith(status: 2),
      ),
    );
  }

// TODO: del all noti
  void _onDeleteAllPressed(
    BuildContext context,
  ) {
    String title = 'Xóa tất cả thông báo';
    setState(() {
      _isDeleteUndoActive = true;
    });
    showNotiDialog(
      context,
      title: title,
      content: 'Bạn có chắc chắn muốn $title không?',
      onCancel: () {
        context.pop();
        setState(() {
          _isDeleteUndoActive = false;
        });
      },
      onConfirmSub: () {
        // Cập nhật giao diện người dùng trước
        _notificationPaginatorBloc.add(
          RemoveAll(),
        );
      },
      onUndo: () {
        // Hoàn tác
        _notificationPaginatorBloc.add(const RestoreAll());
        setState(() {
          _isDeleteUndoActive = false;
        });
      },
      onConfirm: () {
        // Gọi API để xóa tất cả thông báo sau khi xác nhận
        sl<NotificationBloc>().add(DeleteAllNotifications());
        setState(() {
          _isDeleteUndoActive = false;
        });
      },
    );
  }

  // TODO: delete by id
  Future<bool> _deleteNotification(int id) async {
    final completer = Completer<bool>();
    final subscription = sl<NotificationBloc>().stream.listen((state) {
      if (!state.isLoading && state.failure == null) {
        completer.complete(true);
      }
      if (state.failure != null) {
        completer.complete(false);
      }
    });
    sl<NotificationBloc>().add(NotificationEvent.deleteNotification(id: id));
    final result = await completer.future;
    await subscription.cancel();
    return result;
  }

  Future<bool> _onItemDismissed(NotificationEntity notification) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => CustomOkCancelDialog(
        title: 'Xóa thông báo',
        content: 'Bạn có chắc muốn xóa thông báo này?',
        onConfirm: () => context.pop(true),
      ),
    );

    if (confirm != true) {
      return false;
    }

    _notificationPaginatorBloc.add(
      RemoveItem(where: (item) => item.id == notification.id),
    );

    final success = await _deleteNotification(notification.id);

    if (!success && mounted) {
      // Nếu xóa trên server thất bại, khôi phục lại item trên giao diện
      _notificationPaginatorBloc.add(const RestoreLastRemoved());

      showAppDialog(context,
          title: 'Thông báo',
          content: 'Không thể xóa thông báo. Vui lòng thử lại.',
          type: DialogType.ok);
      return false;
    }
    return true;
  }

  Widget _buildBody(PaginatorState<NotificationEntity> notiState) {
    if (notiState.isLoading && notiState.items.isEmpty) {
      return const CardShimmer();
    }
    return NotificationList(
      notiScrollCon: _notiScrollCon,
      notiList: notiState.items,
      isLoadMore: notiState.isLoadMore,
      onItemDismissed: _onItemDismissed,
      onItemTapped: _onNotificationTapped,
      onRefresh: _onRefreshNotifications,
    );
  }

  // TODO: _onRefreshNotifications
  Future<void> _onRefreshNotifications() async {
    if (_isDeleteUndoActive) {
      return;
    }
    _notificationPaginatorBloc.add(LoadInitial<NotificationEntity, int?>(
        usecase: sl<GetNotificationsUsecase>(), limit: _limit));
  }

  //TODO: _onNotificationTapped
  void _onNotificationTapped(NotificationEntity notification) async {
    final result = await context.push<NotificationEntity>(
      '/notification/detail',
      extra: notification,
    );
    if (result != null && mounted) {
      _notificationPaginatorBloc.add(UpdateItem(
        where: (item) => item.id == result.id,
        newItem: result,
      ));
    }
  }

  @override
  bool get wantKeepAlive => true;
}
