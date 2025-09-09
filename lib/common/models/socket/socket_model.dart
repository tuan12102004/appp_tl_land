import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_model.freezed.dart';
part 'socket_model.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class SocketModel<T> with _$SocketModel<T> {
  factory SocketModel({
    required String? title,
    required String? message,
    required String? userType, // Employee or Customer
    required String? type,
    required List<int>? arrTargetId,
    required T? data,
  }) = _SocketModel<T>;

  factory SocketModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$SocketModelFromJson(json, fromJsonT);
}
