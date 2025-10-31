import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';

class ReadAllNotificationUsecase implements Usecase<void, NoParam>{
  final NotificationRepo _notificationRepo;
  ReadAllNotificationUsecase({required NotificationRepo notificationRepo}) : _notificationRepo = notificationRepo;

  @override
  Future<Either<Failure, void>> call(NoParam param) {
    return _notificationRepo.updateReadAllNotification();
  }
}