part of 'about_us_bloc.dart';

@freezed
sealed class AboutUsState with _$AboutUsState {
  const factory AboutUsState({
    @Default(false) bool isLoading,
    AboutUsEntity? info,
    Failure? failure,
  }) = _AboutUsState;
}