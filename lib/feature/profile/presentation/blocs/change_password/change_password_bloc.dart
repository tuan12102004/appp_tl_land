import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUsecase _changePasswordUsecase;

  ChangePasswordBloc({required ChangePasswordUsecase changePasswordUsecase})
      : _changePasswordUsecase = changePasswordUsecase,
        super(const ChangePasswordState()) {
    on<Submit>(_onSubmit);
  }

  void _onSubmit(Submit event, Emitter<ChangePasswordState> emit) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, failure: null));
    
    final params = ChangePasswordRequestEntity(
      oldPassword: event.oldPassword,
      password: event.newPassword,
      passwordConfirmation: event.confirmPassword,
    );

    final result = await _changePasswordUsecase.call(params);
    
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (_) => emit(state.copyWith(isLoading: false, isSuccess: true)),
    );
  }
}