import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/data/search_data_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo {
  final SearchRemoteDatasource _searchRemoteDatasource;
  SearchRepoImpl({required SearchRemoteDatasource searchRemoteDatasource})
      : _searchRemoteDatasource = searchRemoteDatasource;

  @override
  Future<Either<Failure, List<RealEstateEntity>>> searchRealEstates({
    required int page,
    required int limit,
    SearchFilterParam? filter,
  }) async {
    try {
      final searchRealEstates = await _searchRemoteDatasource.searchRealEstates(
        limit: limit,
        page: page,
        filter: filter,
      );
      final searchEntities =
          List<RealEstateEntity>.from(searchRealEstates.map((e) => e.toEntity));
      return Right(searchEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  @override
  Future<Either<Failure, List<RealEstateCategoryEntity>>>
      getRealEstateCategories() async {
    try {
      final categoryModels =
          await _searchRemoteDatasource.getRealEstateCategories();
      final categoryEntities = List<RealEstateCategoryEntity>.from(
          categoryModels.map((e) => e.toEntity));
      return Right(categoryEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  @override
  Future<Either<Failure, List<ProvinceEntity>>> getProvinceList() async {
    try {
      final provinceModels = await _searchRemoteDatasource.getProvinceList();
      final provinceEntities =
          List<ProvinceEntity>.from(provinceModels.map((e) => e.toEntity));
      return Right(provinceEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  @override
  Future<Either<Failure, List<WardEntity>>> getWardListByProvince(
      int provinceId) async {
    try {
      final wardModels =
          await _searchRemoteDatasource.getWardListByProvince(provinceId);
      final wardEntities =
          List<WardEntity>.from(wardModels.map((e) => e.toEntity));
      return Right(wardEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}
