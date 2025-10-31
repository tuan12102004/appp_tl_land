part of 'faq_bloc.dart';

@freezed
sealed class FaqState with _$FaqState {
  const factory FaqState({
    @Default(false) bool isLoading,
    FaqEntity? faq,
    @Default([]) List<FaqEntity>? faqs,
    Failure? failure,
  }) = _FaqState;
}
