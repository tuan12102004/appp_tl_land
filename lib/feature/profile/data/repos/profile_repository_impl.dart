import 'dart:io';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource _profileRemoteDatasource;

  ProfileRepositoryImpl(
      {required ProfileRemoteDatasource profileRemoteDatasource})
      : _profileRemoteDatasource = profileRemoteDatasource;

  @override
  Future<Either<Failure, UserProfileEntity>> getUserProfile() async {
    try {
      final userProfileModel = await _profileRemoteDatasource.getUserProfile();

      final userProfileEntity = userProfileModel.toEntity;

      return Right(userProfileEntity);
    } on ServerException catch (e) {
      return Left(
        Failure(
          err: e.err.toString(),
          type: e.type,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> updateUserProfile({
    File? avatar,
    String? fullname,
    String? email,
    String? phone,
    int? gender,
    DateTime? birthday,
    String? address,
    int? wardId,
    int? provinceId,
  }) async {
    try {
      await _profileRemoteDatasource.updateUserProfile(
        avatar: avatar,
        fullname: fullname,
        email: email,
        phone: phone,
        gender: gender,
        birthday: birthday,
        address: address,
        wardId: wardId,
        provinceId: provinceId,
      );

      return Right(null);
    } on ServerException catch (e) {
      return Left(
        Failure(
          err: e.err.toString(),
          type: e.type,
        ),
      );
    }
  }
}
