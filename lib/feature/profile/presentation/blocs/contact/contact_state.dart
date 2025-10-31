part of 'contact_bloc.dart';

@freezed
sealed class ContactState with _$ContactState {
  const factory ContactState({
    @Default(false) bool isLoading,
    @Default([]) List<ContactEntity> contacts,
    Failure? failure,
  }) = _ContactState;
}
