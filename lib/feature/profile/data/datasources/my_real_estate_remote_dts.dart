import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/data/search_data_module.dart';



abstract interface class MyRealEstateRemoteDatasource {
  Future<List<RealEstateModel>> getMyRealEstates({
    required int page,
    required int limit,
    ApprovalStatus? status,
  });
}

class MyRealEstateRemoteDatasourceImpl implements MyRealEstateRemoteDatasource {
  final DioClient _dioClient;

  MyRealEstateRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  @override
  Future<List<RealEstateModel>> getMyRealEstates({
    required int page,
    required int limit,
    ApprovalStatus? status,
  }) async {
    try {
      final Map<String, dynamic> params = {
        'limit': limit,
        'page': page,
        'approval_status': status?.name,
      };

      final res = await _dioClient.request(
        ApiUrls.myRealEstates,
        DioMethod.get,
        param: params,
      );

      if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }

      final apiRes = ApiResModel<Map<String, dynamic>>.fromJson(
        res.data,
        (json) => json as Map<String, dynamic>,
      );

      final productList = apiRes.data?['products'] as List<dynamic>? ?? [];

      final models =
          productList.map((el) => RealEstateModel.fromJson(el)).toList();

      return models;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }
}
