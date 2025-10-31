part of 'policy_bloc.dart';

@freezed
sealed class PolicyEvent with _$PolicyEvent {
  const factory PolicyEvent.getPolicy() = GetPolicy;
}