import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginator_param.freezed.dart';

@freezed
sealed class PaginatorParam<T> with _$PaginatorParam<T> {
  factory PaginatorParam({
    required int limit,
    required int page,
    T? param,
  }) = _PaginatorParam<T>;
}
