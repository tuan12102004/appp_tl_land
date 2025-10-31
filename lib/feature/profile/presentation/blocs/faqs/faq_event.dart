part of 'faq_bloc.dart';

@freezed
sealed class FaqEvent with _$FaqEvent {
  const factory FaqEvent.getFaqDetail({required int id}) = GetFaqDetail;
  const factory FaqEvent.getFaqs() = GetFaqs;
}