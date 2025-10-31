import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class GetContactsUsecase implements Usecase<List<ContactEntity>, NoParam> {
  final ContactRepo _contactRepo;
  GetContactsUsecase({required ContactRepo contactRepo})
      : _contactRepo = contactRepo;

  @override
  Future<Either<Failure, List<ContactEntity>>> call(NoParam param) async {
    return await _contactRepo.getContacts();
  }
}
