import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, String>> login({
    required String email,
    required String pass,
  });

  Future<Either<Failure, String>> signup({
    required String fullname,
    required String email,
    required String phone,
    required String pass,
    required String confirmPass,
    required DateTime birthday,
  });

  Future<Either<Failure, String>> updatePass({
    required String email,
    required String pass,
    required String confirmPass,
  });

  Future<Either<Failure, void>> logout();

  Future<Either<Failure, UserEntity>> profile();

  Future<Either<Failure, String>> resendOtp({
    required String email,
  });
  Future<Either<Failure, String>> verificationOtp({
    required String email,
    required int otp,
  });
}
