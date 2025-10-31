
import 'dart:async';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState>{
  // Khai báo usecase
  final GetNotificationsUsecase _getNotificationsUsecase;
  final GetNotificationDetailUsecase _getNotificationDetailUsecase;
  final DeleteNotificationUsecase _deleteNotificationUsecase;
  final DeleteAllNotificationUsecase _deleteAllNotificationUsecase;
  final ReadAllNotificationUsecase _readAllNotificationUsecase;

  NotificationBloc({
    required GetNotificationsUsecase getNotifications,
    required GetNotificationDetailUsecase getNotificationDetail,
    required DeleteNotificationUsecase deleteNotification,
    required DeleteAllNotificationUsecase deleteAllNotifications,
    required ReadAllNotificationUsecase readAllNotification,
  })  : _getNotificationsUsecase = getNotifications,
        _getNotificationDetailUsecase = getNotificationDetail,
        _deleteNotificationUsecase = deleteNotification,
        _deleteAllNotificationUsecase = deleteAllNotifications,
        _readAllNotificationUsecase = readAllNotification,
        super(NotificationState()) {
    on<GetNotifications>(_onGetNotifications);
    on<GetNotificationDetail>(_onGetNotificationDetail);
    on<DeleteNotification>(_onDeleteNotification);
    on<DeleteAllNotifications>(_onDeleteAllNotifications);
    on<ReadAllNotification>(_onReadAllNotification);
  }
  // Get notification
  Future<void> _onGetNotifications(GetNotifications event, Emitter<NotificationState> emit) async {
    // Lúc đầu
    emit(state.copyWith(isLoading: true, failure: null, apiAction: ApiActionType.none));
    // Gọi api
    final res = await _getNotificationsUsecase.call(
      PaginatorParam(limit: 10, page: 1)
    );
    res.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure, apiAction: ApiActionType.getAll)), 
      (notifications) {
        final hasUnread = notifications.any((e) => e.status == "Chưa đọc");
        emit(
          state.copyWith(
            isLoading: false, 
            isSuccess: true,
            notifications: notifications,
            hasUnread: hasUnread,
            apiAction: ApiActionType.getAll
          )
        );
      }
    );
  }

  // Get notification detail
  Future<void> _onGetNotificationDetail(GetNotificationDetail event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null, apiAction: ApiActionType.none));
    final res = await _getNotificationDetailUsecase.call(GetNotificationDetailParams(id: event.id));
    res.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure, apiAction: ApiActionType.detail)),
      (notification) => emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        selectedNotification: notification,
        apiAction: ApiActionType.detail
      )),
    );
  }

  Future<void> _onDeleteNotification(DeleteNotification event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(isLoading: false, failure: null));
    final res = await _deleteNotificationUsecase.call(DeleteNotificationParams(id: event.id));

    res.fold(
      (failure) => emit(state.copyWith(isLoading: false ,failure: failure, apiAction: ApiActionType.delete)),
      (_) {
        final updatedList = List.of(state.notifications)..removeWhere((n) => n.id == event.id);
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          notifications: updatedList,
          hasUnread: updatedList.any((e) => e.status == "Chưa đọc"),
          apiAction: ApiActionType.delete,
        ));
      },
    );
  }

   Future<void> _onDeleteAllNotifications(DeleteAllNotifications event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(isLoading: false, failure: null, apiAction: ApiActionType.none));
    final res = await _deleteAllNotificationUsecase.call(NoParam());
    res.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure, apiAction: ApiActionType.delete)),
      (_) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          notifications: [],
          hasUnread: false,
          apiAction: ApiActionType.delete
        ));
      }
    );
  }

  Future<void> _onReadAllNotification(ReadAllNotification event, Emitter<NotificationState> emit) async{
    emit(state.copyWith(isLoading: true, failure: null));
    final res = await _readAllNotificationUsecase.call(NoParam());
    res.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)), 
      (_) {
        final updatedList = state.notifications.map((n) => n.copyWith(status: "Đã đọc")).toList();
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          notifications: updatedList,
          hasUnread: false,
        ));
      },
    );
  }
}