import 'dart:io';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class UpdateUserProfileParam {
  final File? avatar;
  final String? fullname;
  final String? phone;
  final int? gender;
  final DateTime? birthday;
  final String? address;
  final int? wardId;
  final int? provinceId;
  final String? email;

  UpdateUserProfileParam({
    this.fullname,
    this.phone,
    this.gender,
    this.birthday,
    this.avatar,
    this.address,
    this.wardId,
    this.provinceId,
    this.email,
  });
}

class UpdateUserProfileUsecase
    implements Usecase<void, UpdateUserProfileParam> {
// Add Repo
  final ProfileRepository _profileRepository;

  UpdateUserProfileUsecase({
    required ProfileRepository profileRepository,
  }) : _profileRepository = profileRepository;

  @override
  Future<Either<Failure, void>> call(UpdateUserProfileParam param) async {
    return await _profileRepository.updateUserProfile(
      avatar: param.avatar,
      fullname: param.fullname,
      phone: param.phone,
      email: param.email,
      gender: param.gender,
      birthday: param.birthday,
      address: param.address,
      wardId: param.wardId,
      provinceId: param.provinceId,
    );
  }
}
