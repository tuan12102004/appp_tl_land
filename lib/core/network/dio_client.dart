import 'dart:io';

import 'package:app_tl_land_3212/common/enums/dio_method.dart';
import 'package:app_tl_land_3212/common/enums/server_exception_type.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';

import '../errors/server_exception.dart';
import 'app_interceptor.dart';

class DioClient {
  final Dio _dio;
  late final PersistCookieJar _cookieJar;

  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: dotenv.get('API_DOMAIN_URL'),
            headers: {"X-TOKEN-ACCESS": dotenv.get('API_KEY')},
            responseType: ResponseType.json,
            sendTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          ),
        )..interceptors.addAll([
            LogInterceptor(
              request: true,
              requestBody: true,
              requestHeader: true,
              logPrint: print,
            ),
            AppInterceptor(),
          ]);
  void setBearerToken(String token) {
    _dio.options.headers.remove("X-TOKEN-ACCESS");
    _dio.options.headers["Authorization"] = "Bearer $token";
  }

  void resetToApiKey() {
    _dio.options.headers.remove("Authorization");
    _dio.options.headers["X-TOKEN-ACCESS"] = dotenv.get('API_KEY');
  }

  // Initialize session
  Future<void> initSession() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String cookiePath = "${appDocDir.path}/.cookies/";
    _cookieJar = PersistCookieJar(storage: FileStorage(cookiePath));
    _dio.interceptors.add(CookieManager(_cookieJar));
  }

  // Request
  Future<Response> request(
    String endpoint,
    DioMethod method, {
    Map<String, dynamic>? param,
    Object? data,
  }) async {
    try {
      switch (method) {
        case DioMethod.get:
          return await _dio.get(endpoint, queryParameters: param);
        case DioMethod.post:
          return await _dio.post(endpoint, queryParameters: param, data: data);
        case DioMethod.put:
          return await _dio.put(endpoint, queryParameters: param, data: data);
        case DioMethod.delete:
          return await _dio.delete(
            endpoint,
            queryParameters: param,
            data: data,
          );
      }
    } on DioException catch (e) {
      // 🔥 In log tại đây để debug chi tiết lỗi
      print('${dotenv.get('API_DOMAIN_URL')}$endpoint');
      print('❌ DioClient ERROR:');
      print('❌ URL: $endpoint');
      print('❌ METHOD: $method');
      print('❌ STATUS: ${e.response?.statusCode}');
      print('❌ RESPONSE DATA: ${e.response?.data}');
      print('❌ MESSAGE: ${e.message}');
      print('❌ TYPE: ${e.type}');
      print('❌ ERROR: ${e.error}');

      final errType = e.type;

      if (errType == DioExceptionType.badResponse &&
 e.response?.statusCode == 401) {
        //! If token is expired (HTTP 401 Unauthorized)
        throw ServerException(err: "", type: ServerExceptionType.expiredToken);
      } else if (errType == DioExceptionType.connectionError) {
        // If no internet connection
        throw ServerException(
          err: "Kiểm tra lại kết nối mạng",
          type: ServerExceptionType.noInternetConnection,
        );
      } else if (errType == DioExceptionType.receiveTimeout) {
        // If no receive timeout
        throw ServerException(
          err: "Mạng chậm, thử lại sau ít phút",
          type: ServerExceptionType.noInternetConnection,
        );
      } else if (errType == DioExceptionType.unknown) {
        throw ServerException(
          err: "Không thể kết nối đến máy chủ, vui lòng thử lại",
          type: ServerExceptionType.unknown,
        );
      } else {
        // Else
        final data = e.response?.data;
        if (data is Map<String, dynamic>) {
          throw ServerException(
            err: getErrorTexts(data),
            type: ServerExceptionType.api,
          );
        } else {
          throw ServerException(
            err: 'Đã xảy ra lỗi không xác định',
            type: ServerExceptionType.unknown,
          );
        }
      }
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Get error texts
  static String getErrorTexts(Map<String, dynamic> validateMessages) {
    if (validateMessages.containsKey('message_validate')) {
      final errMessages =
          validateMessages['message_validate'] as Map<String, dynamic>;

      for (var el in errMessages.keys) {
        if (errMessages[el] is List<String>) {
          return (errMessages[el] as List<String>).first;
        }
      }
    }
    return validateMessages.containsKey("message")
        ? validateMessages["message"].toString()
        : 'Đã xảy ra lỗi không xác định';
  }
}
