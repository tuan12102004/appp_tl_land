part of 'count_down_bloc.dart';

@freezed
class CountDownEvent with _$CountDownEvent {
  const factory CountDownEvent.startCountdown({required int second}) = _StartCountdown;
  const factory CountDownEvent.cancelCountdown() = _CancelCountdown;
  const factory CountDownEvent.tick() = _Tick;
}