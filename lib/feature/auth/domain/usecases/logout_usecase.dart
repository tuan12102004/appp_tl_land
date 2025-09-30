import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';


class LogoutUsecase implements Usecase<void, NoParam>{
  final AuthRepo _authRepo;
  LogoutUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, void>> call (NoParam param) async {
    return _authRepo.logout();
  }
}