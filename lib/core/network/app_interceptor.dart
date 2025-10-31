import 'dart:io';
import 'package:app_tl_land_3212/common/enums/shared_prefs_key.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../constants/api_urls.dart';
import '../di/service_locator.dart';
import '../services/shared_prefs_service.dart';

class AppInterceptor extends Interceptor {
  // Apis don't need authenticity
  final Set<String> _noAuthUrls = {
    ApiUrls.login,
    ApiUrls.contact,
    ApiUrls.forgotPassword,
    ApiUrls.resendOtp,
    ApiUrls.verifyOtp,
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

    final bool isPublicApi = _noAuthUrls.any((publicUrl) {
      if (options.path.startsWith(publicUrl) && publicUrl != options.path) {
        return true;
      }
      return publicUrl == options.path;
    });

    // Main thread
    if (!isPublicApi) {
      final token =
          sl<SharedPrefsService>().getString(SharedPrefsKey.accessToken);

      if (token == null) {
        return handler.reject(DioException(
          requestOptions: options,
          type: DioExceptionType.badResponse,
        ));
      } else {
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
        return handler.next(options);
      }
    } else {
      return handler.next(options);
    }
  }
}
