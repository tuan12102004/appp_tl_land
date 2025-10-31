import 'dart:async';
import 'dart:io';
import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/data/profile_data_module.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

abstract interface class ProfileRemoteDatasource {
  Future<UserProfileModel> getUserProfile();

  Future<void> updateUserProfile({
    File? avatar,
    String? fullname,
    String? email,
    String? phone,
    int? gender,
    DateTime? birthday,
    String? address,
    int? wardId,
    int? provinceId,
  });
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  final DioClient _dioClient;

  ProfileRemoteDatasourceImpl({
    required DioClient dioClient,
  }) : _dioClient = dioClient;

  @override
  Future<UserProfileModel> getUserProfile() async {
    try {
      final res = await _dioClient.request(ApiUrls.profile, DioMethod.get);

      if (res.statusCode != 200) {
        throw ServerException(
          err: res.data['message'] ?? "Đã xảy ra lỗi không xác định",
          type: ServerExceptionType.unknown,
        );
      }

      final responseData = ApiResModel.fromJson(res.data,
          (obj) => UserProfileModel.fromJson(obj as Map<String, dynamic>));

      return responseData.data!;
    } on TimeoutException {
      throw ServerException(
        err: 'Quá thời gian kết nối đến máy chủ',
        type: ServerExceptionType.api,
      );
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(
        err: e.toString(),
        type: ServerExceptionType.api,
      );
    }
  }

  @override
  Future<void> updateUserProfile({
    File? avatar,
    String? fullname,
    String? email,
    String? phone,
    int? gender,
    DateTime? birthday,
    String? address,
    int? wardId,
    int? provinceId,
  }) async {
    try {
      final formData = FormData();

      if (avatar != null) {
        formData.files.add(
          MapEntry(
            'avatar',
            await MultipartFile.fromFile(
              avatar.path,
              filename: avatar.path.split('/').last,
            ),
          ),
        );
      }

      if (fullname != null) {
        formData.fields.add(MapEntry('fullname', fullname));
      }
      if (phone != null) {
        formData.fields.add(MapEntry('phone', phone));
      }
      if (email != null) {
        formData.fields.add(MapEntry('email', email));
      }
      if (gender != null) {
        formData.fields.add(MapEntry('gender', gender.toString()));
      }
      if (birthday != null) {
        formData.fields.add(
            MapEntry('birthday', DateFormat('yyyy-MM-dd').format(birthday)));
      }
      if (address != null) {
        formData.fields.add(MapEntry('address', address));
      }
      if (wardId != null) {
        formData.fields.add(MapEntry('ward_id', wardId.toString()));
      }
      if (provinceId != null) {
        formData.fields.add(MapEntry('province_id', provinceId.toString()));
      }

      final res = await _dioClient.request(
        ApiUrls.updateProfile,
        DioMethod.post,
        data: formData,
      );

      if (res.statusCode != 200) {
        throw ServerException(
          err: res.data['message'] ?? "Đã xảy ra lỗi không xác định",
          type: ServerExceptionType.unknown,
        );
      }
    } on TimeoutException {
      throw ServerException(
        err: 'Quá thời gian kết nối đến máy chủ',
        type: ServerExceptionType.api,
      );
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(
        err: e.toString(),
        type: ServerExceptionType.api,
      );
    }
  }
}
