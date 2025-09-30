import 'package:dartz/dartz.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';

class ForgotPassParams {
  final String email;
  final String pass;
  final String confirmPass;
  ForgotPassParams({
    required this.email,
    required this.pass,
    required this.confirmPass,
  });
}

class ForgotPassUsecase implements Usecase<String, ForgotPassParams> {
  final AuthRepo _authRepo;
  ForgotPassUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, String>> call (ForgotPassParams param) async {
    return _authRepo.forgotPass(
      email: param.email,
      pass: param.pass, 
      confirmPass: param.confirmPass
    );
  }
}

