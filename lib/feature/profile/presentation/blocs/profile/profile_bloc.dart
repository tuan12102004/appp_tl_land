import 'dart:io';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserProfileUsecase _getUserProfileUsecase;
  final UpdateUserProfileUsecase _updateInfoProfileUsecase;
  final GetProvinceListUsecase _getProvincesUsecase;
  final GetWardListByProvinceUsecase _getWardsByProvinceUsecase;
  ProfileBloc({
    required GetUserProfileUsecase getUserProfileUsecase,
    required UpdateUserProfileUsecase updateInfoProfileUsecase,
    required GetProvinceListUsecase getProvincesUsecase,
    required GetWardListByProvinceUsecase getWardsByProvinceUsecase,
  })  : _getUserProfileUsecase = getUserProfileUsecase,
        _updateInfoProfileUsecase = updateInfoProfileUsecase,
        _getProvincesUsecase = getProvincesUsecase,
        _getWardsByProvinceUsecase = getWardsByProvinceUsecase,
        super(ProfileState()) {
    on<GetUserProfile>(_onGetUserProfile);
    on<UpdateInfoProfile>(_onUpdateInfoProfile);
    on<GetProvinces>(_onGetProvinces);
    on<ProvinceChanged>(_onProvinceChanged);
  }

  Future<void> _onGetUserProfile(
      GetUserProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      isSuccess: false,
      failure: null,
      actionType: ProfileActionType.userProfile,
    ));

    final result = await _getUserProfileUsecase.call(NoParam());

    result.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        failure: failure,
      ));
    }, (user) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        userProfileEntity: user,
      ));
      add(const ProfileEvent.getProvinces());
    });
  }

  Future<void> _onUpdateInfoProfile(
      UpdateInfoProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      isSuccess: false,
      failure: null,
      actionType: ProfileActionType.updateInfo,
    ));

    final result = await _updateInfoProfileUsecase.call(UpdateUserProfileParam(
        avatar: event.avatar,
        fullname: event.fullname,
        phone: event.phone,
        email: event.email,
        gender: event.gender,
        birthday: event.birthday,
        address: event.address,
        wardId: event.wardId,
        provinceId: event.provinceId));

    result.fold((failure) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
        failure: failure,
      ));
    }, (_) {
      final currentUser = sl<SharedPrefsService>()
          .getUserEntity(SharedPrefsKey.user); // Lấy user cũ
      if (currentUser != null) {
        final provinceName =
            state.provinces.firstWhere((p) => p.id == event.provinceId).name;
        final wardName = state.wards.firstWhere((w) => w.id == event.wardId).name;
        final updatedUser = currentUser.copyWith(
            // avatar: event.avatar?.path,
            fullname: event.fullname,
            phone: event.phone,
            email: event.email,
            gender: event.gender,
            birthday: event.birthday,
            address: event.address,
            ward: wardName,
            province: provinceName);
        sl<SharedPrefsService>()
            .saveUserEntity(SharedPrefsKey.user, updatedUser);
        sl<AuthBloc>().add(const AuthEvent.profile());
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
          actionType: ProfileActionType.updateInfo,
        ));
      }
    });
  }

  Future<void> _onGetProvinces(
      GetProvinces event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isProvincesLoading: true));
    final result = await _getProvincesUsecase.call(NoParam());
    result.fold(
      (failure) =>
          emit(state.copyWith(isProvincesLoading: false, failure: failure)),
      (provinces) {
        emit(state.copyWith(isProvincesLoading: false, provinces: provinces));
        // Nếu đã có thông tin user, tìm tỉnh của user để tải danh sách phường tương ứng
        final userProvinceName = state.userProfileEntity?.province;
        if (userProvinceName != null) {
          try {
            final userProvince =
                provinces.firstWhere((p) => p.name == userProvinceName);
            final provinceId = userProvince.id;
            if (provinceId != null) {
              add(ProfileEvent.provinceChanged(provinceId: provinceId));
            }
          } catch (e) {
            // Trường hợp tên tỉnh trong hồ sơ không khớp với danh sách từ API
          }
        }
      },
    );
  }

  Future<void> _onProvinceChanged(
      ProvinceChanged event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isWardsLoading: true, wards: []));
    final result = await _getWardsByProvinceUsecase.call(event.provinceId);
    result.fold(
      (failure) =>
          emit(state.copyWith(isWardsLoading: false, failure: failure)),
      (wards) => emit(state.copyWith(isWardsLoading: false, wards: wards)),
    );
  }
}
