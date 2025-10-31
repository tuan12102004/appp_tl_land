import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/data/auth_data_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDatasource _authRemoteDatasource;
  AuthRepoImpl({required AuthRemoteDatasource authRemoteDatasource})
      : _authRemoteDatasource = authRemoteDatasource;

  // Login
  @override
  Future<Either<Failure, String>> login(
      {required String email, required String pass}) async {
    try {
      final accessToken =
          await _authRemoteDatasource.login(email: email, pass: pass);
      return Right(accessToken);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Profile
  @override
  Future<Either<Failure, UserEntity>> profile() async {
    // Gọi profile từ datasource
    try {
      final user = await _authRemoteDatasource.profile();
      final userEntity = user.toEntity();
      return Right(userEntity);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  @override
  Future<Either<Failure, List<ContactEntity>>> signup() async {
    try {
      final contactToSignup = await _authRemoteDatasource.signup();
      final contactToSignupEntities = List<ContactEntity>.from(
          contactToSignup.map((e) => e.toEntity));

      return Right(contactToSignupEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // forgot pass
  @override
  Future<Either<Failure, String>> forgotPass({
    required String email,
    required String pass,
    required String confirmPass,
  }) async {
    // Gọi updatePass từ datasource
    try {
      final mess = await _authRemoteDatasource.forgotPass(
          email: email, pass: pass, confirmPass: confirmPass);
      // Thành công trả về Right
      return Right(mess);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // send OTP
  @override
  Future<Either<Failure, String>> sendOtp({required String email}) async {
    // Gọi resend từ datasource
    try {
      final mess = await _authRemoteDatasource.sendOtp(email: email);
      return Right(mess);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Resend OTP
  @override
  Future<Either<Failure, String>> resendOtp({required String email}) async {
    // Gọi resend từ datasource
    try {
      final mess = await _authRemoteDatasource.resendOtp(email: email);
      return Right(mess);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  @override
  Future<Either<Failure, String>> verificationOtp({
    required String email,
    required int otp,
  }) async {
    // Gọi api từ datasource
    try {
      final mess =
          await _authRemoteDatasource.verificationOtp(email: email, otp: otp);
      return Right(mess);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  // Logout
  @override
  Future<Either<Failure, void>> logout() async {
    // Gọi logout từ datasource
    try {
      await _authRemoteDatasource.logout();
      // Thành công trả về Right()
      return const Right(null); // trả về null nếu void
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}
