import 'dart:async';
import 'dart:developer';

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

  // ktra có tb nào chưa đọc không
  bool get hasUnreadNoti {
    final items = _notificationPaginatorBloc.state.items;
    return items.any((n) => (n.status ?? "") == "Chưa đọc");
  }

  // ktra có dstb không
  bool get hasNotifications {
    return _notificationPaginatorBloc.state.items.isNotEmpty;
  }

  @override
  void initState() {
    super.initState();
    // đọc trạng thái
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // đợi đến khi frame đầu tiên hoàn thành
      if (mounted) {
        setState(() {});
      }
    });

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
      final dialogObserver = sl<DialogObserverBloc>();

      if (context.mounted &&
          state.failure?.type != null &&
          !dialogObserver.state.isDialogOpen) {
        DisplayError.handle(
            context: context,
            errerrType: state.failure!.type,
            apiMessage: state.failure!.err);
      }
    } else if (state.isSuccess) {
      sl<MultiLoadingStateService>().fireCheck();
      await _popAnimation(context);
    }
  }

  Future<void> _onRefreshNotifications() async {
    _notificationPaginatorBloc.add(LoadInitial<NotificationEntity, int?>(
        usecase: sl<GetNotificationsUsecase>(), limit: _limit));
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
            // Kiểm tra xem dữ liệu đã chiếm hết toàn bộ màn hình chưa
            if (notiState.isLoaded) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) {
                  _onLoadMoreWhenNotScrollable();
                }
              });
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
                    style: Theme.of(context)
                        .appBarTheme
                        .titleTextStyle
                        ?.copyWith(
                            color: TextColors.textDefaultPrimary,
                            fontWeight: FontWeight.w600),
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
                            notiState.items
                                .any((n) => (n.status ?? "") == "Chưa đọc"),
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

  // Read all noti
  void _onMarkAllAsReadPressed() {
    // TODO: Api đã đọc tất cả
    sl<NotificationBloc>().add(ReadAllNotification());
  }

  // del all noti
  void _onDeleteAllPressed(
    BuildContext context,
  ) {
    String title = 'Xóa tất cả thông báo';
    showNotiDialog(
      context,
      title: title,
      content: 'Bạn có muốn chắc $title?',
      onCancel: () => context.pop(),
      onConfirmSub: () {
        // TODO: Xóa UI trước
        _notificationPaginatorBloc.add(
          RemoveAll(),
        );
      },
      onUndo: () {
        // TODO: Hoàn tác UI
        _notificationPaginatorBloc.add(const RestoreAll());
      },
      onConfirm: () {
        // TODO: Xóa tất cả event
        sl<NotificationBloc>().add(DeleteAllNotifications());
      },
    );
  }

  List<PopupMenuEntry<String>> _buildPopup(
    BuildContext context,
    bool hasUnreadNotifications,
    bool hasNotifications,
  ) {
    return [
      PopupMenuItem(
        enabled: hasUnreadNotifications,
        onTap: () {
          Navigator.of(context).pop();
          _onMarkAllAsReadPressed();
        },
        child: CustomAdaptiveTapEffect(
          text: 'Đã đọc tất cả',
          textColor: hasUnreadNotifications
              ? IconColors.iconDefaultPrimary
              : IconColors.iconButtonDisabled,
          isOpacity: true,
          fontSize: 16.sp,
          preffixWidget: Icon(Icons.mark_chat_read_sharp,
              color: IconColors.iconNavigationBarEnabled, size: 24.sp),
        ),
      ),
      PopupMenuItem(
          enabled: hasUnreadNotifications,
          onTap: () {
            Navigator.of(context).pop();
            _onDeleteAllPressed(context);
          },
          child: CustomAdaptiveTapEffect(
            text: 'Xóa tất cả',
            textColor: hasUnreadNotifications
                ? IconColors.iconDefaultPrimary
                : IconColors.iconButtonDisabled,
            isOpacity: true,
            fontSize: 16.sp,
            preffixWidget: Icon(Icons.delete,
                color: IconColors.iconErrorPrimary, size: 24.sp),
          )),
    ];
  }

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
        onCancel: () => context.pop(false),
        onConfirm: () => context.pop(true),
      ),
    );

    if (confirm == true) {
      final success = await _deleteNotification(notification.id);
      if (success && mounted) {
        _notificationPaginatorBloc.add(
          RemoveItem(where: (item) => item.id == notification.id),
        );
        return true;
      }
      return false;
    }
    return false;
  }

  Widget _buildBody(PaginatorState<NotificationEntity> notiState) {
    if (notiState.isLoading ||
        (!notiState.isLoaded && notiState.items.isEmpty)) {
      // return const Center(child: CircularProgressIndicator());
      return const CardShimmer();
    }
    return NotificationList(
      notiScrollCon: _notiScrollCon,
      notiList: notiState.items,
      isLoadMore: notiState.isLoadMore,
      onItemDismissed: _onItemDismissed,
      onRefresh: _onRefreshNotifications,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
