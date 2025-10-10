import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/enums/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter_event.dart';
part 'search_filter_state.dart';
part 'search_filter_bloc.freezed.dart';

class SearchFilterBloc extends Bloc<SearchFilterEvent, SearchFilterState> {
  final GetRealEstateCategoriesUsecase _getCategoriesUsecase;
  final GetProvinceListUsecase _getProvinceListUsecase;
  final GetWardListByProvinceUsecase _getWardListByProvinceUsecase;

  SearchFilterBloc(
      {required GetRealEstateCategoriesUsecase getCategoriesUsecase,
      required GetProvinceListUsecase getProvinceListUsecase,
      required GetWardListByProvinceUsecase getWardListByProvinceUsecase})
      : _getCategoriesUsecase = getCategoriesUsecase,
        _getProvinceListUsecase = getProvinceListUsecase,
        _getWardListByProvinceUsecase = getWardListByProvinceUsecase,
        super(const SearchFilterState()) {
    on<_LoadInitialData>(_onLoadInitialData);
    on<_FilterChanged>(_onFilterChanged);
    on<_ProvinceChanged>(_onProvinceChanged);
    on<_PriceRangeChanged>(_onPriceRangeChanged);
    on<_PriceUnitChanged>(_onPriceUnitChanged);
    on<_Reset>(_onReset);
  }

  Future<void> _onLoadInitialData(
      _LoadInitialData event, Emitter<SearchFilterState> emit) async {
    if (state.provinces.isNotEmpty && state.categories.isNotEmpty) {
      return;
    }
    if (state.status == Status.success) return;

    emit(state.copyWith(status: Status.loading));

    final provinceRes = await _getProvinceListUsecase(NoParam());
    await provinceRes.fold((failure) async {
      emit(state.copyWith(status: Status.failure, failure: failure));
    }, (province) async {
      emit(state.copyWith(provinces: province, status: Status.success));
    });

    final catRes = await _getCategoriesUsecase(NoParam());
    await catRes.fold((failure) async {
      emit(state.copyWith(status: Status.failure, failure: failure));
    }, (cat) async {
      emit(state.copyWith(categories: cat, status: Status.success));
    });
  }

  Future<void> _onProvinceChanged(
      _ProvinceChanged event, Emitter<SearchFilterState> emit) async {
    // Cập nhật provinceId, reset wardId và xóa danh sách phường/xã cũ
    emit(state.copyWith(
        filter:
            state.filter.copyWith(provinceId: event.provinceId, wardId: null),
        wards: [],
        status: Status.loading));

    final result = await _getWardListByProvinceUsecase(event.provinceId);

    result.fold(
      (failure) =>
          emit(state.copyWith(status: Status.failure, failure: failure)),
      (wards) => emit(state.copyWith(status: Status.success, wards: wards)),
    );
  }

  void _onFilterChanged(_FilterChanged event, Emitter<SearchFilterState> emit) {
    emit(state.copyWith(filter: event.filter));
  }

  void _onPriceRangeChanged(
      _PriceRangeChanged event, Emitter<SearchFilterState> emit) {
    emit(state.copyWith(priceRange: event.newRange));
  }

  void _onPriceUnitChanged(
      _PriceUnitChanged event, Emitter<SearchFilterState> emit) {
    emit(state.copyWith(priceUnitMultiplier: event.multiplier));
  }

  void _onReset(_Reset event, Emitter<SearchFilterState> emit) {
    emit(state.copyWith(
        filter: const SearchFilterParam(),
        priceRange: const RangeValues(0, 999999),
        priceUnitMultiplier: 1000000,
        wards: []));
  }
}
