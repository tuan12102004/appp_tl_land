import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetFaqDetailUsecase implements Usecase<FaqEntity, int> {
  final FaqRepo _faqRepo;
  GetFaqDetailUsecase({required FaqRepo faqRepo}) : _faqRepo = faqRepo;

  @override
  Future<Either<Failure, FaqEntity>> call(int param) async {
    return await _faqRepo.getFaqDetail(id: param);
  }
}