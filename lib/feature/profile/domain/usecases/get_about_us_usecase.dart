import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetAboutUsUsecase implements Usecase<AboutUsEntity, NoParam> {
  final AboutUsRepo _aboutUsRepo;
  GetAboutUsUsecase({required AboutUsRepo aboutUsRepo})
      : _aboutUsRepo = aboutUsRepo;

  @override
  Future<Either<Failure, AboutUsEntity>> call(NoParam param) async {
    return await _aboutUsRepo.getAboutUsInfo();
  }
}
