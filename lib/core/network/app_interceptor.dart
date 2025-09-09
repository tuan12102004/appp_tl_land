import 'dart:io';
import 'package:app_tl_land_3212/common/enums/shared_prefs_key.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../constants/api_urls.dart';
import '../di/service_locator.dart';
import '../services/shared_prefs_service.dart';

class AppInterceptor extends Interceptor {
  // Apis don't need authenticity
  final Set<String> _noAuthUrls = {
    ApiUrls.login,
    ApiUrls.signup,
    ApiUrls.resetPassword,
  };

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Check network connection
    final isConnected = await InternetConnection().hasInternetAccess;
    if (!isConnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.connectionError,
        ),
      );
    }

    // Main thread
    if (!_noAuthUrls.contains(options.path)) {
      final token = sl<SharedPrefsService>().getString(
        SharedPrefsKey.accessToken,
      );
      // If token is expire or null then handling
      if (token == null || JwtDecoder.isExpired(token)) {
        return handler.reject(
          DioException(
            requestOptions: options,
            type: DioExceptionType.expiredToken,
          ),
        );
      } else {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
        return handler.next(options);
      }
    } else {
      return handler.next(options);
    }
  }
}
