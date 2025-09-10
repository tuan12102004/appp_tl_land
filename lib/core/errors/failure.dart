import 'package:app_tl_land_3212/common/common_module.dart';

class Failure {
  final String err;
  final ServerExceptionType type;
  final int timestamp;
  Failure({
    required this.err,
    this.type = ServerExceptionType.api,
    int? timestamp,
  }) : timestamp = timestamp ?? DateTime.now().millisecondsSinceEpoch;
  @override
  String toString() {
    return 'Failure(err: $err, type: $type, timestamp: $timestamp)';
  }
}
