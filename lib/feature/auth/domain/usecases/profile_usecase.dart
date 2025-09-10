import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

class ProfileParams{
  ProfileParams();
}

class ProfileUsecase implements Usecase<UserEntity, ProfileParams>{
  final AuthRepo _authRepo;
  ProfileUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, UserEntity>> call (ProfileParams param){
    return _authRepo.profile();
  }
}