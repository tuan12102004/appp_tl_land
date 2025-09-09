import 'package:intl/intl.dart';
import '../enums/gender.dart';
import '../enums/request_status.dart';

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

  RequestStatus toRequestStatus() {
    switch (this) {
      case 1:
        return RequestStatus.pending;
      case 2:
        return RequestStatus.approved;
      case 3:
        return RequestStatus.rejected;
      default:
        return RequestStatus.pending;
    }
  }
}
