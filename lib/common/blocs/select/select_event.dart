part of 'select_bloc.dart';

@freezed
class SelectEvent<T> with _$SelectEvent<T> {
  const factory SelectEvent.select(T value) = _Select<T>;
  const factory SelectEvent.reset() = _Reset<T>;
}