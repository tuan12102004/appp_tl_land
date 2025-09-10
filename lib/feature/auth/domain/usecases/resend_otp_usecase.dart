import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

class ResendOtpParams {
  final String email;
  ResendOtpParams({
    required this.email,
  });
}

class ResendOtpUsecase implements Usecase<String, ResendOtpParams>{
  final AuthRepo _authRepo;
  ResendOtpUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, String>> call (ResendOtpParams param) async {
    return await _authRepo.resendOtp(
      email: param.email
    );
  }
}