import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_event.dart';
part 'faq_state.dart';
part 'faq_bloc.freezed.dart';

class FaqBloc extends Bloc<FaqEvent, FaqState> {
  final GetFaqDetailUsecase _getFaqDetailUsecase;
  final GetFaqsUsecase _getFaqsUsecase;

  FaqBloc(
      {required GetFaqDetailUsecase getFaqDetailUsecase,
      required GetFaqsUsecase getFaqsUsecase})
      : _getFaqDetailUsecase = getFaqDetailUsecase,
        _getFaqsUsecase = getFaqsUsecase,
        super(const FaqState()) {
    on<GetFaqDetail>(_onGetFaqDetail);
    on<GetFaqs>(_onGetFaqs);
  }
  void _onGetFaqs(GetFaqs event, Emitter<FaqState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _getFaqsUsecase.call(NoParam());
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (faqs) => emit(state.copyWith(isLoading: false, faqs: faqs)),
    );
  }

  void _onGetFaqDetail(GetFaqDetail event, Emitter<FaqState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));

    final result = await _getFaqDetailUsecase.call(event.id);

    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (faq) => emit(state.copyWith(isLoading: false, faq: faq)),
    );
  }
}
