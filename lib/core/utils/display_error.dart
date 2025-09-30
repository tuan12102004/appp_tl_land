import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/widgets.dart';

class DisplayError {
  static void handle(
      {required BuildContext context,
      required ServerExceptionType errerrType,
      required String? apiMessage,
      VoidCallback? onConfirm}) {
    final message = _getMessage(errerrType, apiMessage);
    bool isExpiredToken = errerrType == ServerExceptionType.expiredToken;
    showAppDialog(
      context,
      title: 'Thông báo',
      content: message,
      type: DialogType.ok,
      confirmText: isExpiredToken ? 'Đăng xuất' : null,
      onConfirm: isExpiredToken ? onConfirm : null,
    );
  }

  static String _getMessage(
      ServerExceptionType errerrType, String? apiMessage) {
    switch (errerrType) {
      case ServerExceptionType.api:
        if (apiMessage != null && apiMessage.trim().isNotEmpty) {
          return apiMessage;
        }
        return 'Hệ thống đang gặp sự cố.\nVui lòng thử lại sau.';
      case ServerExceptionType.expiredToken:
        return 'Phiên đăng nhập đã hết hạn.\nVui lòng đăng nhập lại.';
      case ServerExceptionType.noInternetConnection:
        return 'Không có kết nối Internet.\nVui lòng kiểm tra kết nối mạng';
      case ServerExceptionType.unknown:
        return 'Đã xảy ra lỗi không xác định.\nVui lòng thử lại sau.';
      case ServerExceptionType.accountBlocked:
        return 'Tài khoản đã bị khóa';
    }
  }
}
