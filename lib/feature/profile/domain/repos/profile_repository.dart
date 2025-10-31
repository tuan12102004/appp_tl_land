import 'dart:io';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract interface class ProfileRepository {
  // Get user info
  Future<Either<Failure, UserProfileEntity>> getUserProfile();

  // Update user info
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
  });
}
