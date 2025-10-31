import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';

class DeleteAllNotificationUsecase implements Usecase<void, NoParam>{
  final NotificationRepo _notificationRepo;
  DeleteAllNotificationUsecase({required NotificationRepo notificationRepo}) : _notificationRepo = notificationRepo;

  @override
  Future<Either<Failure,void>> call (NoParam param) async {
    return await _notificationRepo.deleteAllNotifications();
  }
}