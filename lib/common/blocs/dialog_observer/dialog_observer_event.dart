part of 'dialog_observer_bloc.dart';

@freezed
class DialogObserverEvent with _$DialogObserverEvent {
  const factory DialogObserverEvent.openTheDialog() = OpenTheDialog;
  const factory DialogObserverEvent.closeTheDialog() = CloseTheDialog;
}