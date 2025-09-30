import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

class SendOtpParams {
  final String email;
  SendOtpParams({
    required this.email,
  });
}

class SendOtpUsecase implements Usecase<String, SendOtpParams>{
  final AuthRepo _authRepo;
  SendOtpUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, String>> call (SendOtpParams param) async {
    return await _authRepo.sendOtp(
      email: param.email
    );
  }
}