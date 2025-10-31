import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/noti/data/noti_data_module.dart';
import 'package:dio/dio.dart';

abstract interface class NotificationRemoteDatasource {
  Future<List<NotificationModel>> getNotifications(
      {int limit = 10, int page = 1});
  Future<NotificationModel> getNotificationDetail({required int id});
  Future<void> deleteNotification({required int id});
  Future<void> deleteAllNotifications();
  Future<void> updateReadAllNotification();
}

class NotificationRemoteDatasourceImpl implements NotificationRemoteDatasource {
  final DioClient _dioClient;
  NotificationRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  void _throwIfError(Response res) {
    if (res.statusCode == 200) {
      final errMsg = DioClient.getErrorTexts(res.data);
      throw ServerException(err: errMsg);
    }
  }

  // Get list notifications
  @override
  Future<List<NotificationModel>> getNotifications(
      {int limit = 10, int page = 1}) async {
    try {
      final res = await _dioClient.request(
        ApiUrls.notificationList,
        DioMethod.get,
        param: {"limit": limit, "page": page},
      );
      if (res.statusCode != 200) _throwIfError(res);
      final apiRes = ApiResModel<Map<String, dynamic>>.fromJson(
        res.data,
        (json) => json as Map<String, dynamic>,
      );
      final notiList = apiRes.data?['notification'] as List<dynamic>? ?? [];

      final models =
          notiList.map((el) => NotificationModel.fromJson(el)).toList();
      return models;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Get detail notification
  @override
  Future<NotificationModel> getNotificationDetail({required int id}) async {
    try {
      final res = await _dioClient.request(
        '${ApiUrls.notificationDetail}/$id',
        DioMethod.get,
      );
      if (res.statusCode != 200) _throwIfError(res);

      return NotificationModel.fromJson(
          res.data['data'] as Map<String, dynamic>);
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Delete one notification
  @override
  Future<void> deleteNotification({required int id}) async {
    try {
      final res = await _dioClient.request(
        '${ApiUrls.notificationDelete}/$id',
        DioMethod.delete,
      );
      if (res.statusCode != 200) _throwIfError(res);
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Delete all notifications
  @override
  Future<void> deleteAllNotifications() async {
    try {
      final res = await _dioClient.request(
        ApiUrls.notificationDeleteAll,
        DioMethod.delete,
      );
      if (res.statusCode != 200) _throwIfError(res);
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Update all read notifications
  @override
  Future<void> updateReadAllNotification() async {
    try {
      final res = await _dioClient.request(
        ApiUrls.notificationReadAll,
        DioMethod.get,
      );
      if (res.statusCode != 200) _throwIfError(res);
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }
}
