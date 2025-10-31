part of 'profile_bloc.dart';

enum ProfileActionType {
  none,
  userProfile,
  updateInfo,
}

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isProvincesLoading,
    @Default(false) bool isWardsLoading,
    @Default(false) bool isSuccess,
    Failure? failure,
    @Default(ProfileActionType.none) ProfileActionType actionType,
    UserProfileEntity? userProfileEntity,
    @Default([]) List<ProvinceEntity> provinces,
    @Default([]) List<WardEntity> wards,
  }) = _ProfileState;
}
