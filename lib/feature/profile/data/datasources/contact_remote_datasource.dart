import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';

abstract interface class ContactRemoteDatasource {
  Future<List<ContactModel>> getContacts();
}

class ContactRemoteDatasourceImpl implements ContactRemoteDatasource {
  final DioClient _dioClient;
  ContactRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;
  @override
  Future<List<ContactModel>> getContacts() async {
    try {
      final res = await _dioClient.request(ApiUrls.contact, DioMethod.get);
      
      final apiRes = ApiResModel<List<ContactModel>>.fromJson(
          res.data,
          (rawJson) => (rawJson as List<dynamic>)
              .map((el) => ContactModel.fromJson(el))
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
}
