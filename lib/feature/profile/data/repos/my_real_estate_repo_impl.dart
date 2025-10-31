import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/data/models/real_estate/real_estate_model.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class MyRealEstateRepoImpl implements MyRealEstateRepo {
  final MyRealEstateRemoteDatasource _remoteDatasource;

  MyRealEstateRepoImpl({required MyRealEstateRemoteDatasource remoteDatasource})
      : _remoteDatasource = remoteDatasource;

  @override
  Future<Either<Failure, List<RealEstateEntity>>> getMyRealEstates({
    required int page,
    required int limit,
    ApprovalStatus? status,
  }) async {
    try {
      final models = await _remoteDatasource.getMyRealEstates(
        page: page,
        limit: limit,
        status: status,
      );
      final entities = models.map((e) => e.toEntity).toList();
      return Right(entities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}