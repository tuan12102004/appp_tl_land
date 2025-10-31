import 'dart:async';
import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';

abstract interface class FaqRemoteDatasource {
  Future<List<FaqModel>> getFaqs();

  Future<FaqModel> getFaqDetail({required int id});
}

class FaqRemoteDatasourceImpl implements FaqRemoteDatasource {
  final DioClient _dioClient;
  FaqRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  @override
  Future<List<FaqModel>> getFaqs() async {
    try {
      final res = await _dioClient.request(
        ApiUrls.faqs,
        DioMethod.get,
      );

      final apiRes = ApiResModel<List<FaqModel>>.fromJson(
        res.data,
       (rawJson) => (rawJson as List<dynamic>)
              .map((el) => FaqModel.fromJson(el))
              .toList());

      if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }

      return apiRes.data ?? [];
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  @override
  Future<FaqModel> getFaqDetail({required int id}) async {
    try {
      final res = await _dioClient.request(
        '${ApiUrls.faqDetail}$id',
        DioMethod.get,
      );

      final apiRes = ApiResModel<FaqModel>.fromJson(res.data,
          (rawJson) => FaqModel.fromJson(rawJson as Map<String, dynamic>));
      if (apiRes.data == null) {
        throw ServerException(err: 'Không thể lấy chi tiết FAQ');
      } else if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }
      return apiRes.data!;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }
}
