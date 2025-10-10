import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetWardListByProvinceUsecase
    implements Usecase<List<WardEntity>, int> {
  final SearchRepo _searchRepo;
  GetWardListByProvinceUsecase({required SearchRepo searchRepo})
      : _searchRepo = searchRepo;

  @override
  Future<Either<Failure, List<WardEntity>>> call(
      int provinceId) async {
    return await _searchRepo.getWardListByProvince(provinceId);
  }
}