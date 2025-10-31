import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_real_estate_event.dart';
part 'my_real_estate_state.dart';
part 'my_real_estate_bloc.freezed.dart';

class MyRealEstateBloc extends Bloc<MyRealEstateEvent, MyRealEstateState> {

  MyRealEstateBloc({required GetMyRealEstatesUsecase getMyRealEstatesUsecase})
      :
        super(const MyRealEstateState()) {
    on<_StatusChanged>(_onStatusChanged);
  }
  void _onStatusChanged(_StatusChanged event, Emitter<MyRealEstateState> emit) {
    emit(state.copyWith(selectedStatus: event.newStatus));
  }
}
