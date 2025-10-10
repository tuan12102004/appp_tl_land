part of 'select_bloc.dart';

@freezed
class SelectState<T> with _$SelectState<T> {
  const factory SelectState.initial() = InitialSelect<T>;
  const factory SelectState.selected({T? value}) = Selected<T>;
}
