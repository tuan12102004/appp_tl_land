import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class ChangePasswordUsecase
    implements Usecase<void, ChangePasswordRequestEntity> {
  final ChangePasswordRepo _repo;
  ChangePasswordUsecase({required ChangePasswordRepo repo}) : _repo = repo;

  @override
  Future<Either<Failure, void>> call(ChangePasswordRequestEntity params) async {
    return await _repo.changePassword(params);
  }
}
