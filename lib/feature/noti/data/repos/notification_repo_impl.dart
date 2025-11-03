import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/data/noti_data_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';


class NotificationRepoImpl implements NotificationRepo {
  final NotificationRemoteDatasource _notificationRemoteDatasource;

  NotificationRepoImpl({required NotificationRemoteDatasource notificationRemoteDatasource})
      : _notificationRemoteDatasource = notificationRemoteDatasource;

  // Get list notifications
  @override
  Future<Either<Failure, List<NotificationEntity>>> getNotifications(
      {int limit = 10, int page = 1}) async {
    try {
      final notifications = await _notificationRemoteDatasource.getNotifications(
        limit: limit,
        page: page,
      );
      final notificationEntities = notifications.map((e) => e.toEntity).toList();
      return Right(notificationEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Get notification detail
  @override
  Future<Either<Failure, NotificationEntity>> getNotificationDetail({required int id}) async {
    try {
      final notification = await _notificationRemoteDatasource.getNotificationDetail(id: id);
      return Right(notification.toEntity);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Delete one notification
  @override
  Future<Either<Failure, void>> deleteNotification({required int id}) async {
    try {
      await _notificationRemoteDatasource.deleteNotification(id: id);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Delete all notifications
  @override
  Future<Either<Failure, void>> deleteAllNotifications() async {
    try {
      await _notificationRemoteDatasource.deleteAllNotifications();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Update read all notifications
  @override
  Future<Either<Failure, void>> updateReadAllNotification() async {
    try {
      await _notificationRemoteDatasource.updateReadAllNotification();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}
