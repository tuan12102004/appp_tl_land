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
            sendTimeout: const Duration(seconds: 8),
            receiveTimeout: const Duration(seconds: 8),
          ),
        )
        ..interceptors.addAll([
          LogInterceptor(
            request: true,
            requestBody: true,
            requestHeader: true,
            logPrint: print,
          ),
          AppInterceptor(),
        ]);

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
      final errType = e.type;

      if (errType == DioExceptionType.expiredToken) {
        // If token is expired
        throw ServerException(err: "", type: ServerExceptionType.expiredToken);
      } else if (errType == DioExceptionType.connectionError) {
        // If no internet connection
        throw ServerException(
          err: "",
          type: ServerExceptionType.noInternetConnection,
        );
      } else if (errType == DioExceptionType.receiveTimeout) {
        // If no receive timeout
        throw ServerException(
          err: "",
          type: ServerExceptionType.noInternetConnection,
        );
      } else {
        // Else
        throw ServerException(
          err: _getErrorTexts(e.response?.data as Map<String, dynamic>),
        );
      }
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Get error texts
  String _getErrorTexts(Map<String, dynamic> validateMessages) {
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
        ? validateMessages["message"]
        : '';
  }
}
