import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class SearchRealEstatesUsecase
    implements
        Usecase<List<RealEstateEntity>, PaginatorParam<SearchFilterParam>> {
  final SearchRepo _searchRepo;
  SearchRealEstatesUsecase({required SearchRepo searchRepo})
      : _searchRepo = searchRepo;

  @override
  Future<Either<Failure, List<RealEstateEntity>>> call(
      PaginatorParam<SearchFilterParam> param) async {
    return await _searchRepo.searchRealEstates(
      page: param.page,
      limit: param.limit,
      filter: param.param,
    );
  }
}
