import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

class LogoutParams{
  LogoutParams();
}

class LogoutUsecase implements Usecase<void, LogoutParams>{
  final AuthRepo _authRepo;
  LogoutUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, void>> call (LogoutParams param) async {
    return _authRepo.logout();
  }
}