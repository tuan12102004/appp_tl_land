import 'package:dartz/dartz.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';

class UpdatePassParams {
  final String email;
  final String pass;
  final String confirmPass;
  UpdatePassParams({
    required this.email,
    required this.pass,
    required this.confirmPass,
  });
}

class UpdatePassUsecase implements Usecase<String, UpdatePassParams> {
  final AuthRepo _authRepo;
  UpdatePassUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;
  @override
  Future<Either<Failure, String>> call (UpdatePassParams param) async {
    return _authRepo.updatePass(
      email: param.email,
      pass: param.pass, 
      confirmPass: param.confirmPass
    );
  }
}

