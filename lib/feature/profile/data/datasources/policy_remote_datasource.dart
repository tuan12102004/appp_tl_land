import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';

abstract interface class PolicyRemoteDatasource {
  Future<PolicyModel> getPolicy();
}

class PolicyRemoteDatasourceImpl implements PolicyRemoteDatasource {
  final DioClient _dioClient;
  PolicyRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;
  @override
  Future<PolicyModel> getPolicy() async {
    try {
      final res =
          await _dioClient.request(ApiUrls.privacyPolicy, DioMethod.get);

      final apiRes = ApiResModel<PolicyModel>.fromJson(
        res.data,
        (rawJson) => PolicyModel.fromJson(rawJson as Map<String, dynamic>),
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
