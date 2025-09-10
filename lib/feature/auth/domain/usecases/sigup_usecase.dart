import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:dartz/dartz.dart';

class SignupParams {
  final String fullname;
  final String email;
  final String phone;
  final String pass;
  final String confirmPass;
  final DateTime birthday;

  SignupParams({
    required this.fullname,
    required this.email,
    required this.phone,
    required this.pass,
    required this.confirmPass,
    required this.birthday,
  });
}

class SignupUsecase implements Usecase<String, SignupParams>{
  final AuthRepo _authRepo;
  SignupUsecase({required AuthRepo authRepo}) :  _authRepo = authRepo;
  @override
  Future<Either<Failure, String>> call (SignupParams param) async {
    return await _authRepo.signup(
      fullname: param.fullname, 
      email: param.email, 
      phone: param.phone, 
      pass: param.pass, 
      confirmPass: param.confirmPass, 
      birthday: param.birthday
    );
  }
}