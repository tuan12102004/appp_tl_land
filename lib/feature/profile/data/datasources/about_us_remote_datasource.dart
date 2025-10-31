import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';

abstract interface class AboutUsRemoteDatasource {
  Future<AboutUsModel> getAboutUsInfo();
}

class AboutUsRemoteDatasourceImpl implements AboutUsRemoteDatasource {
  final DioClient _dioClient;
  AboutUsRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  @override
  Future<AboutUsModel> getAboutUsInfo() async {
    try {
      final res = await _dioClient.request(ApiUrls.aboutUs, DioMethod.get);

      final apiRes = ApiResModel<AboutUsModel>.fromJson(
        res.data,
        (rawJson) => AboutUsModel.fromJson(rawJson as Map<String, dynamic>),
      );

      if (res.statusCode != 200) {
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
