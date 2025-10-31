import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:dartz/dartz.dart';

class FaqRepoImpl implements FaqRepo {
  final FaqRemoteDatasource _faqRemoteDatasource;
  FaqRepoImpl({required FaqRemoteDatasource faqRemoteDatasource})
      : _faqRemoteDatasource = faqRemoteDatasource;

  @override
  Future<Either<Failure, List<FaqEntity>>> getFaqs() async {
    try {
      final faqs = await _faqRemoteDatasource.getFaqs();
      final faqEntities = List<FaqEntity>.from(faqs.map((e) => e.toEntity));
      return Right(faqEntities);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }

  @override
  Future<Either<Failure, FaqEntity>> getFaqDetail({required int id}) async {
    try {
      final faqDetail = await _faqRemoteDatasource.getFaqDetail(id: id);
      return Right(faqDetail.toEntity);
    } on ServerException catch (e) {
      return Left(Failure(err: e.err, type: e.type));
    }
  }
}
