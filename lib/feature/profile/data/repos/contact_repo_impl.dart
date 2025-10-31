import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class ContactRepoImpl implements ContactRepo {
  final ContactRemoteDatasource _contactRemoteDatasource;
  ContactRepoImpl({required ContactRemoteDatasource contactRemoteDatasource})
      : _contactRemoteDatasource = contactRemoteDatasource;

  @override
  Future<Either<Failure, List<ContactEntity>>> getContacts() async {
    try {
      final contacts = await _contactRemoteDatasource.getContacts();
      final contactEntities =
          List<ContactEntity>.from(contacts.map((e) => e.toEntity));

      return Right(contactEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}
