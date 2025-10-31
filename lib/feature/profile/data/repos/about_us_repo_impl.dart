
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class AboutUsRepoImpl implements AboutUsRepo {
  final AboutUsRemoteDatasource _aboutUsRemoteDatasource;
  AboutUsRepoImpl({required AboutUsRemoteDatasource aboutUsRemoteDatasource})
      : _aboutUsRemoteDatasource = aboutUsRemoteDatasource;

  @override
  Future<Either<Failure, AboutUsEntity>> getAboutUsInfo() async {
    try {
      final info = await _aboutUsRemoteDatasource.getAboutUsInfo();
      
      return Right(info.toEntity);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}