part of 'count_down_bloc.dart';

@freezed
class CountDownState with _$CountDownState {
  const factory CountDownState.initial() = Initial;
  const factory CountDownState.remainingTime({
    required String time,
    required bool isActive,
  }) = RemainingTime;
}
