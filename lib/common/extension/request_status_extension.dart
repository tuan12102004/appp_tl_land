import 'package:app_tl_land_3212/common/enums/request_status.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';

extension RequestStatusX on RequestStatus {
  String toDisplayString(BuildContext context) {
    switch (this) {
      case RequestStatus.pending:
        return 'Chờ duyệt';
      case RequestStatus.approved:
        return 'Đã duyệt';
      case RequestStatus.rejected:
        return 'Từ chối';
    }
  }

  // màu nền của tab DỰA TRÊN trạng thái active.
  Color getBackgroundColor({required bool isActive}) {
    if (!isActive) {
      return BackgroundColors.backgroundDefaultPrimary;
    }

    switch (this) {
      case RequestStatus.pending:
        return BackgroundColors.backgroundSuccessPrimary;
      case RequestStatus.approved:
        return BackgroundColors.backgroundBrandPrimary;
      case RequestStatus.rejected:
        return BackgroundColors.backgroundErrorPrimary;
    }
  }

  // màu chữ của tab DỰA TRÊN trạng thái active.
  Color getTextColor({required bool isActive}) {
    if (isActive) {
      return TextColors.textDefaultPrimary;
    }

    switch (this) {
      case RequestStatus.pending:
        return TextColors.textSuccessPrimary;
      case RequestStatus.approved:
        return TextColors.textBrandPrimary;
      case RequestStatus.rejected:
        return TextColors.textErrorPrimary;
    }
  }
}

RequestStatus statusFromString(String? status) {
  switch (status?.toLowerCase()) {
    case 'pending':
    case 'cho_duyet':
      return RequestStatus.pending;
    case 'approved':
    case 'da_duyet':
      return RequestStatus.approved;
    case 'rejected':
    case 'tu_choi':
      return RequestStatus.rejected;
    default:
      return RequestStatus.pending;
  }
}
