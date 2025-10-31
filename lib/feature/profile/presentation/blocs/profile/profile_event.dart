part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserProfile() = GetUserProfile;

  const factory ProfileEvent.updateInfoProfile({
    File? avatar,
    String? fullname,
    String? email,
    String? phone,
    int? gender,
    DateTime? birthday,
    String? address,
    int? wardId,
    int? provinceId,
  }) = UpdateInfoProfile;

  const factory ProfileEvent.getProvinces() = GetProvinces;

  const factory ProfileEvent.provinceChanged({required int provinceId}) =
      ProvinceChanged;
}
