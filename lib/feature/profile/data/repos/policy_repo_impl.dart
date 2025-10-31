import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class PolicyRepoImpl implements PolicyRepo {
  final PolicyRemoteDatasource _policyRemoteDatasource;
  PolicyRepoImpl({required PolicyRemoteDatasource policyRemoteDatasource})
      : _policyRemoteDatasource = policyRemoteDatasource;

  @override
  Future<Either<Failure, PolicyEntity>> getPolicy() async {
    try {
      final policy = await _policyRemoteDatasource.getPolicy();
      return Right(policy.toEntity);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}