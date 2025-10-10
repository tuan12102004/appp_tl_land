import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetRealEstateCategoriesUsecase
    implements Usecase<List<RealEstateCategoryEntity>, NoParam> {
  final SearchRepo _searchRepo;
  GetRealEstateCategoriesUsecase({required SearchRepo searchRepo})
      : _searchRepo = searchRepo;

  @override
  Future<Either<Failure, List<RealEstateCategoryEntity>>> call(
      NoParam param) async {
    return await _searchRepo.getRealEstateCategories();
  }
}