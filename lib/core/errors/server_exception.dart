import 'package:app_tl_land_3212/common/enums/server_exception_type.dart';

class ServerException implements Exception {
  final String err;
  final ServerExceptionType type;

  ServerException({required this.err, this.type = ServerExceptionType.api});

  @override
  String toString() => err;
}
