part of 'policy_bloc.dart';

@freezed
sealed class PolicyState with _$PolicyState {
  const factory PolicyState({
    @Default(false) bool isLoading,
    PolicyEntity? policy,
    Failure? failure,
  }) = _PolicyState;
}