part of 'my_real_estate_bloc.dart';

@freezed
sealed class MyRealEstateEvent with _$MyRealEstateEvent {
    const factory MyRealEstateEvent.statusChanged(ApprovalStatus newStatus) =
      _StatusChanged;
}
