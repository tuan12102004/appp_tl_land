import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, String>> login({
    required String email,
    required String pass,
  });

  Future<Either<Failure, UserEntity>> profile();

  Future<Either<Failure, List<ContactEntity>>> signup();

  Future<Either<Failure, String>> forgotPass({
    required String email,
    required String pass,
    required String confirmPass,
  });

  Future<Either<Failure, String>> sendOtp({
    required String email,
  });

  Future<Either<Failure, String>> resendOtp({
    required String email,
  });

  Future<Either<Failure, String>> verificationOtp({
    required String email,
    required int otp,
  });

  Future<Either<Failure, void>> logout();
}
