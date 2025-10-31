import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';

class DeleteNotificationUsecase implements Usecase<void, DeleteNotificationParams>{
  final NotificationRepo _notificationRepo;
  DeleteNotificationUsecase({required NotificationRepo notificationRepo}) : _notificationRepo = notificationRepo;

  @override
  Future<Either<Failure,void>> call (DeleteNotificationParams param) async {
    return await _notificationRepo.deleteNotification(id: param.id);
  }
}

class DeleteNotificationParams{
  final int id;
  DeleteNotificationParams({required this.id});
}