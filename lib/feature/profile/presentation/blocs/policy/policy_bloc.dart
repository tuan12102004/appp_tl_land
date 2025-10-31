import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy_event.dart';
part 'policy_state.dart';
part 'policy_bloc.freezed.dart';

class PolicyBloc extends Bloc<PolicyEvent, PolicyState> {
  final GetPolicyUsecase _getPolicyUsecase;

  PolicyBloc({required GetPolicyUsecase getPolicyUsecase})
      : _getPolicyUsecase = getPolicyUsecase,
        super(const PolicyState()) {
    on<GetPolicy>(_onGetPolicy);
  }

  void _onGetPolicy(GetPolicy event, Emitter<PolicyState> emit) async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _getPolicyUsecase.call(NoParam());
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (policy) => emit(state.copyWith(isLoading: false, policy: policy)),
    );
  }
}