import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetNotificationsUsecase implements Usecase<List<NotificationEntity>, PaginatorParam<int?>>{
  final NotificationRepo _notificationRepo;
  GetNotificationsUsecase({
    required NotificationRepo notificationRepo
  }) : _notificationRepo = notificationRepo;

  @override
  Future<Either<Failure, List<NotificationEntity>>> call (PaginatorParam<int?> param) async{
    return await _notificationRepo.getNotifications(
      limit: param.limit,
      page: param.page,
    );
  }
}