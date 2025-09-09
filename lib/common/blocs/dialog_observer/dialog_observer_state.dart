part of 'dialog_observer_bloc.dart';

@freezed
sealed class DialogObserverState with _$DialogObserverState {
  const factory DialogObserverState({@Default(0) int dialogQuantity}) =
      _DialogObserverState;
}
