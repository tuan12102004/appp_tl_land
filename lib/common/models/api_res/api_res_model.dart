import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_res_model.freezed.dart';
part 'api_res_model.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResModel<T> with _$ApiResModel<T> {
  factory ApiResModel({
    required int? status,
    required String? message,
    required T? data,
  }) = _ApiResModel<T>;

  factory ApiResModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ApiResModelFromJson(json, fromJsonT);
}
