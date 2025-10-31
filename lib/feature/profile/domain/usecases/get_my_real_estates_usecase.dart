import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetMyRealEstatesUsecase
    implements Usecase<List<RealEstateEntity>, PaginatorParam<ApprovalStatus>> {
  final MyRealEstateRepo _repository;

  GetMyRealEstatesUsecase({required MyRealEstateRepo repository})
      : _repository = repository;

  @override
  Future<Either<Failure, List<RealEstateEntity>>> call(
      PaginatorParam<ApprovalStatus> param) async {
    return await _repository.getMyRealEstates(
      page: param.page,
      limit: param.limit,
      status: param.param,
    );
  }
}