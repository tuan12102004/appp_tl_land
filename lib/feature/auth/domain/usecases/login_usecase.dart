import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

class LoginParams {
  final String email;
  final String pass;
  LoginParams({required this.email, required this.pass});
}

class LoginUsecase implements Usecase<String, LoginParams> {
  final AuthRepo _authRepo;
  LoginUsecase ({required AuthRepo authRepo}) : _authRepo = authRepo;

  @override
  Future<Either<Failure, String>> call (LoginParams param) async {
    return await _authRepo.login(email: param.email, pass: param.pass);
  }
}