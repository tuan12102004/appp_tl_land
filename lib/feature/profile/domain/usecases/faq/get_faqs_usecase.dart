import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetFaqsUsecase implements Usecase<List<FaqEntity>, NoParam> {
  final FaqRepo _faqRepo;
  GetFaqsUsecase({required FaqRepo faqRepo}) : _faqRepo = faqRepo;

  @override
  Future<Either<Failure, List<FaqEntity>>> call(NoParam param) async {
    return await _faqRepo.getFaqs();
  }
}
