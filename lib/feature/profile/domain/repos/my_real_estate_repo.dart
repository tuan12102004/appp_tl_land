import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract interface class MyRealEstateRepo {
  Future<Either<Failure, List<RealEstateEntity>>> getMyRealEstates({
    required int page,
    required int limit,
    ApprovalStatus? status,
  });
}