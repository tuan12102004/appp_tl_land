part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(null) Failure? failure,
    @Default(AuthActionType.none) AuthActionType actionType,
    bool? isAuthenticated,
    // UserModel? userModel,
    UserEntity? userModel,

  }) = _AuthState;  
}
