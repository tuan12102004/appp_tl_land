part of 'search_filter_bloc.dart';

@freezed
sealed class SearchFilterEvent with _$SearchFilterEvent {
  // Event để load dữ liệu ban đầu
  const factory SearchFilterEvent.loadInitialData() = _LoadInitialData;

  // Events để cập nhật từng phần của bộ lọc
  const factory SearchFilterEvent.filterChanged(SearchFilterParam filter) =
      _FilterChanged;
  const factory SearchFilterEvent.provinceChanged(int provinceId) =
      _ProvinceChanged;
  const factory SearchFilterEvent.priceRangeChanged(RangeValues newRange) =
      _PriceRangeChanged;
      const factory SearchFilterEvent.priceUnitChanged(int multiplier) = _PriceUnitChanged;
  // Event để reset bộ lọc về trạng thái ban đầu
  const factory SearchFilterEvent.reset() = _Reset;
}
