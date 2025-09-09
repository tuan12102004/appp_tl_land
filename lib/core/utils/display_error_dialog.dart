import 'package:app_tl_land_3212/common/enums/dialog_type.dart';
import 'package:app_tl_land_3212/common/enums/server_exception_type.dart';
import 'package:app_tl_land_3212/core/core_util_module.dart';
import 'package:app_tl_land_3212/core/errors/failure.dart';
import 'package:flutter/material.dart';

void displayErrorDialog(BuildContext context, {required Failure failure}) {
  switch (failure.type) {
    // Api
    case ServerExceptionType.api:
      showAppDialog(
        context,
        title: "Thông báo",
        content: failure.err,
        type: DialogType.ok,
      );
      break;

    // Token is expired
    case ServerExceptionType.expiredToken:
      showAppDialog(
        context,
        title: "Thông báo",
        content: "Mã thông báo đã hết hạn.",
        type: DialogType.ok,
        onConfirm: () => onLogout(context),
      );
      break;

    // No internet connection
    case ServerExceptionType.noInternetConnection:
      showAppDialog(
        context,
        title: "Thông báo",
        content: "Không có kết nối internet.",
        type: DialogType.ok,
      );
      break;

    // System error
    case ServerExceptionType.systemError:
      showAppDialog(
        context,
        title: "Thông báo",
        content: "Đã xảy ra lỗi hệ thống.",
        type: DialogType.ok,
      );
      break;

    // Unknown error
    case ServerExceptionType.unknown:
      showAppDialog(
        context,
        title: "Thông báo",
        content: "Đã xảy ra lỗi không xác định.",
        type: DialogType.ok,
      );
      break;
  }
}
