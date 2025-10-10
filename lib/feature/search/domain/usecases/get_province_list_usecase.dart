import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetProvinceListUsecase
    implements Usecase<List<ProvinceEntity>, NoParam> {
  final SearchRepo _searchRepo;
  GetProvinceListUsecase({required SearchRepo searchRepo})
      : _searchRepo = searchRepo;

  @override
  Future<Either<Failure, List<ProvinceEntity>>> call(
      NoParam param) async {
    return await _searchRepo.getProvinceList();
  }
}