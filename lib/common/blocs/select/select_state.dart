part of 'select_bloc.dart';

@freezed
class SelectState<T> with _$SelectState<T> {
  const factory SelectState.initial() = Initial<T>;
  const factory SelectState.selected({required T value}) = Selected<T>;
}
