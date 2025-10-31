import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_event.dart';
part 'about_us_state.dart';
part 'about_us_bloc.freezed.dart';

class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
  final GetAboutUsUsecase _getAboutUsUsecase;

  AboutUsBloc({required GetAboutUsUsecase getAboutUsUsecase})
      : _getAboutUsUsecase = getAboutUsUsecase,
        super(const AboutUsState()) {
    on<GetAboutUsInfo>(_onGetAboutUsInfo);
  }

  void _onGetAboutUsInfo(GetAboutUsInfo event, Emitter<AboutUsState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _getAboutUsUsecase.call(NoParam());
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (info) => emit(state.copyWith(isLoading: false, info: info)),
    );
  }
}