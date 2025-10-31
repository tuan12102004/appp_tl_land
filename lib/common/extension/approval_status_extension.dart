import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';

extension ApprovalStatusX on ApprovalStatus {
  String toDisplayString(BuildContext context) {
    switch (this) {
      case ApprovalStatus.pending:
        return 'Chờ duyệt';
      case ApprovalStatus.active:
        return 'Đã duyệt';
      case ApprovalStatus.rejected:
        return 'Từ chối';
    }
  }

  // màu nền của tab DỰA TRÊN trạng thái active.
  Color getBackgroundColor({required bool isActive}) {
    if (!isActive) {
      return BackgroundColors.backgroundDefaultPrimary;
    }

    switch (this) {
      case ApprovalStatus.pending:
        return BackgroundColors.backgroundSuccessPrimary;
      case ApprovalStatus.active:
        return BackgroundColors.backgroundBrandPrimary;
      case ApprovalStatus.rejected:
        return BackgroundColors.backgroundErrorPrimary;
    }
  }

  // màu chữ của tab DỰA TRÊN trạng thái active.
  Color getTextColor({required bool isActive}) {
    if (isActive) {
      return TextColors.textDefaultPrimary;
    }

    switch (this) {
      case ApprovalStatus.pending:
        return TextColors.textSuccessPrimary;
      case ApprovalStatus.active:
        return TextColors.textBrandPrimary;
      case ApprovalStatus.rejected:
        return TextColors.textErrorPrimary;
    }
  }
}

ApprovalStatus statusFromString(String? status) {
  switch (status?.toLowerCase()) {
    case 'pending':
    case 'cho_duyet':
      return ApprovalStatus.pending;
    case 'approved':
    case 'da_duyet':
      return ApprovalStatus.active;
    case 'rejected':
    case 'tu_choi':
      return ApprovalStatus.rejected;
    default:
      return ApprovalStatus.pending;
  }
}
