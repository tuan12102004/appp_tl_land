part of 'my_real_estate_bloc.dart';

@freezed
sealed class MyRealEstateState with _$MyRealEstateState {
  const factory MyRealEstateState({
    @Default(ApprovalStatus.pending) ApprovalStatus selectedStatus,
  }) = _MyRealEstateState;
}
