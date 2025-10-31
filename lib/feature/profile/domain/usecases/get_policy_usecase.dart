import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetPolicyUsecase implements Usecase<PolicyEntity, NoParam> {
  final PolicyRepo _policyRepo;
  GetPolicyUsecase({required PolicyRepo policyRepo}) : _policyRepo = policyRepo;

  @override
  Future<Either<Failure, PolicyEntity>> call(NoParam param) async {
    return await _policyRepo.getPolicy();
  }
}