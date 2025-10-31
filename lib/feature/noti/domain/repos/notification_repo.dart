import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract interface class NotificationRepo {
  // Get list notifications
  Future<Either<Failure, List<NotificationEntity>>> getNotifications({
    int limit = 10,
    int page = 1,
  });

  // Get notification detail
  Future<Either<Failure, NotificationEntity>> getNotificationDetail({
    required int id,
  });

  // Delete one notification
  Future<Either<Failure, void>> deleteNotification({
    required int id,
  });

  // Delete all notifications
  Future<Either<Failure, void>> deleteAllNotifications();

  // Update read all notifications
  Future<Either<Failure, void>> updateReadAllNotification();
}
