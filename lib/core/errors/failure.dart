import 'package:app_tl_land_3212/common/enums/server_exception_type.dart';

class Failure {
  final String err;
  final ServerExceptionType type;

  Failure({required this.err, this.type = ServerExceptionType.api});
}
