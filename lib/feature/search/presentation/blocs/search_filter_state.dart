part of 'search_filter_bloc.dart';

@freezed
sealed class SearchFilterState with _$SearchFilterState {
  const factory SearchFilterState({
    @Default(Status.initial) Status status,
    // Object chứa toàn bộ thông tin filter
    @Default(SearchFilterParam()) SearchFilterParam filter,
    @Default([]) List<RealEstateCategoryEntity> categories,
    @Default([]) List<ProvinceEntity> provinces,
    @Default([]) List<WardEntity> wards,
    @Default(RangeValues(0, 999999)) RangeValues priceRange,
    @Default(1000000) int priceUnitMultiplier,
    Failure? failure,
  }) = _SearchFilterState;
}
