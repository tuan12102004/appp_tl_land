import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
    Future<Either<Failure, List<RealEstateEntity>>> searchRealEstates({
    required int limit,
    required int page,
    SearchFilterParam? filter,
  });
  Future<Either<Failure, List<RealEstateCategoryEntity>>> getRealEstateCategories();
  Future<Either<Failure, List<ProvinceEntity>>> getProvinceList();
  Future<Either<Failure, List<WardEntity>>> getWardListByProvince(int provinceId);
}