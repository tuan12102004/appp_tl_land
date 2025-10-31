import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract interface class ChangePasswordRepo {
  Future<Either<Failure, void>> changePassword(ChangePasswordRequestEntity params);
}