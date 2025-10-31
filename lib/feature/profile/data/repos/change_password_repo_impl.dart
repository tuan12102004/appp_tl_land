import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';
class ChangePasswordRepoImpl implements ChangePasswordRepo {
  final ChangePasswordRemoteDatasource _remoteDatasource;
  ChangePasswordRepoImpl(
      {required ChangePasswordRemoteDatasource remoteDatasource})
      : _remoteDatasource = remoteDatasource;

  @override
  Future<Either<Failure, void>> changePassword(
      ChangePasswordRequestEntity params) async {
    try {
      final requestModel = params.toModel();
      
      final result = await _remoteDatasource.changePassword(requestModel);
      
      return Right(result);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}
