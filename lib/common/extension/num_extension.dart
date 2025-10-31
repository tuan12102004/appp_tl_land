import 'package:intl/intl.dart';
import '../enums/gender.dart';
import '../enums/approval_status.dart';

extension NumExtenstion on num {
  // Format currency
  String get formatCurrency =>
      "${NumberFormat.currency(symbol: "", locale: "vi_VN").format(this).trim()}đ";

  // To gender
  Gender toGender() {
    switch (this) {
      case 1:
        return Gender.male;
      case 2:
        return Gender.felmale;
      default:
        return Gender.other;
    }
  }

  ApprovalStatus toRequestStatus() {
    switch (this) {
      case 1:
        return ApprovalStatus.pending;
      case 2:
        return ApprovalStatus.active;
      case 3:
        return ApprovalStatus.rejected;
      default:
        return ApprovalStatus.pending;
    }
  }
}
