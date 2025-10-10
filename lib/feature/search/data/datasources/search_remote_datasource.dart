import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/data/search_data_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/entities/search_filter_param.dart';

abstract interface class SearchRemoteDatasource {
  Future<List<RealEstateModel>> searchRealEstates({
    required int page,
    required int limit,
    SearchFilterParam? filter,
  });
  Future<List<RealEstateCategoryModel>> getRealEstateCategories();
  Future<List<ProvinceModel>> getProvinceList();
  Future<List<WardModel>> getWardListByProvince(int provinceId);
}

class SearchRemoteDatasourceImpl implements SearchRemoteDatasource {
  final DioClient _dioClient;

  SearchRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  @override
  Future<List<RealEstateModel>> searchRealEstates({
    required int page,
    required int limit,
    SearchFilterParam? filter,
  }) async {
    try {
      final Map<String, dynamic> params = {
        'limit': limit,
        'page': page,
        ...?filter?.toQueryParameters(),
      };
      final res = await _dioClient
          .request(ApiUrls.searchRealEstates, DioMethod.get, param: params);

      // final apiRes = ApiResModel<List<RealEstateModel>>.fromJson(
      //     res.data,
      //     (rawJson) => (rawJson as List<dynamic>)
      //         .map((el) => RealEstateModel.fromJson(el))
      //         .toList());

      final apiRes = ApiResModel<Map<String, dynamic>>.fromJson(
        res.data,
        (json) => json as Map<String, dynamic>,
      ); // "data":{}

      if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }

      // Lấy danh sách từ key 'products' bên trong data
      final productList = apiRes.data?['products'] as List<dynamic>? ??
          []; // "data":{"products":[{}]}

      // Map danh sách đó thành List<RealEstateModel>
      final models =
          productList.map((el) => RealEstateModel.fromJson(el)).toList();

      return models;
      // return apiRes.data ?? [];
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  @override
  Future<List<RealEstateCategoryModel>> getRealEstateCategories() async {
    try {
      final res = await _dioClient.request(
        ApiUrls.realEstateCategory,
        DioMethod.get,
      );

      final apiRes = ApiResModel<Map<String, dynamic>>.fromJson(
        res.data,
        (json) => json as Map<String, dynamic>,
      );

      if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }

      final categoryList = apiRes.data?['catalogs'] as List<dynamic>? ?? [];

      final models = categoryList
          .map((el) => RealEstateCategoryModel.fromJson(el))
          .toList();

      return models;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  @override
  Future<List<ProvinceModel>> getProvinceList() async {
    try {
      final res = await _dioClient.request(
        ApiUrls.provinces,
        DioMethod.get,
      );

      final apiRes = ApiResModel<List<ProvinceModel>>.fromJson(
          res.data,
          (rawJson) => (rawJson as List<dynamic>)
              .map((el) => ProvinceModel.fromJson(el))
              .toList());

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

  @override
  Future<List<WardModel>> getWardListByProvince(int provinceId) async {
    try {
      final res = await _dioClient.request(
        '${ApiUrls.wards}$provinceId',
        DioMethod.get,
      );

      final apiRes = ApiResModel<List<WardModel>>.fromJson(
          res.data,
          (rawJson) => (rawJson as List<dynamic>)
              .map((el) => WardModel.fromJson(el))
              .toList());

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
