import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetNotificationDetailUsecase implements Usecase<NotificationEntity, GetNotificationDetailParams>{
  final NotificationRepo _notificationRepo;
  GetNotificationDetailUsecase({required NotificationRepo notificationRepo}) : _notificationRepo = notificationRepo;

  @override
  Future<Either<Failure,NotificationEntity>> call (GetNotificationDetailParams param) async {
    return await _notificationRepo.getNotificationDetail(id: param.id);
  }
}

class GetNotificationDetailParams{
  final int id;
  GetNotificationDetailParams({required this.id});
}