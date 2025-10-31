import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';

abstract interface class ChangePasswordRemoteDatasource {
  Future<void> changePassword(ChangePasswordRequestModel params);
}

class ChangePasswordRemoteDatasourceImpl
    implements ChangePasswordRemoteDatasource {
  final DioClient _dioClient;
  ChangePasswordRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  @override
  Future<void> changePassword(ChangePasswordRequestModel params) async {
    try {
      final res = await _dioClient.request(
        ApiUrls.changePassword,
        DioMethod.put,
        data: params.toJson(),
      );
      
      if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }

    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }
}
