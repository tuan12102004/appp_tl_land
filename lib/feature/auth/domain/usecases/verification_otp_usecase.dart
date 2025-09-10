import 'package:dartz/dartz.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';

class VerificationOtpParams {
  final String email;
  final int otp;
  VerificationOtpParams({
    required this.email,
    required this.otp
  });
}

class VerificationOtpUsecase implements Usecase<String, VerificationOtpParams> {
  final AuthRepo _authRepo;
  VerificationOtpUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, String>> call (VerificationOtpParams param) async {
    return await _authRepo.verificationOtp(
      email: param.email, 
      otp: param.otp
    );
  }
}