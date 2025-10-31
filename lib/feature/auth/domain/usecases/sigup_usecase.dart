import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class SignupUsecase implements Usecase<List<ContactEntity>, NoParam> {
  final AuthRepo _authRepo;
  SignupUsecase({required AuthRepo authRepo})
      : _authRepo = authRepo;

  @override
  Future<Either<Failure, List<ContactEntity>>> call(NoParam param) async {
    return await _authRepo.signup();
  }
}