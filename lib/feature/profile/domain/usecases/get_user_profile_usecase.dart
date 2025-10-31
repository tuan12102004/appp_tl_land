import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetUserProfileUsecase implements Usecase<UserProfileEntity, NoParam> {
// Add Repo
  final ProfileRepository _profileRepository;

  GetUserProfileUsecase({
    required ProfileRepository profileRepository,
  }) : _profileRepository = profileRepository;

  @override
  Future<Either<Failure, UserProfileEntity>> call(NoParam param) async {
    return await _profileRepository.getUserProfile();
  }
}
