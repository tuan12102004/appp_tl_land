import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/search_page_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search/search_filter_model.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search_widget_module.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchFilterPage extends StatefulWidget {
  final String title;

  const SearchFilterPage({super.key, required this.title});

  @override
  State<SearchFilterPage> createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  final TextEditingController _minPriceController = TextEditingController();
  final TextEditingController _maxPriceController = TextEditingController();
  final FocusNode _minPriceNode = FocusNode();
  final FocusNode _maxPriceNode = FocusNode();

  late final SelectBloc<int?> _provinceBloc;
  late final SelectBloc<int?> _wardBloc;
  late final SelectBloc<int?> _priceUnitBloc;

  late SearchFilterParam _tempFilter;
  late RangeValues _tempPriceRange;
  late int _tempPriceUnitMultiplier;

  @override
  void initState() {
    super.initState();
    final initialBlocState = sl<SearchFilterBloc>().state;
    _provinceBloc = SelectBloc<int?>();
    _wardBloc = SelectBloc<int?>();
    _priceUnitBloc = SelectBloc<int?>();

    _tempFilter = initialBlocState.filter;
    _tempPriceRange = initialBlocState.priceRange;
    _tempPriceUnitMultiplier = initialBlocState.priceUnitMultiplier;

    if (_tempFilter.minPrice != null) {
      _minPriceController.text =
          (_tempFilter.minPrice! / _tempPriceUnitMultiplier).toInt().toString();
    }
    if (_tempFilter.maxPrice != null) {
      _maxPriceController.text =
          (_tempFilter.maxPrice! / _tempPriceUnitMultiplier).toInt().toString();
    }

    _provinceBloc.add(SelectEvent.select(value: _tempFilter.provinceId));
    _wardBloc.add(SelectEvent.select(value: _tempFilter.wardId));
    _priceUnitBloc.add(SelectEvent.select(value: _tempPriceUnitMultiplier));
    sl<SearchFilterBloc>().add(const SearchFilterEvent.loadInitialData());
  }

  @override
  void dispose() {
    super.dispose();
    _provinceBloc.close();
    _wardBloc.close();
    _priceUnitBloc.close();

    _minPriceController.dispose();
    _maxPriceController.dispose();
    _minPriceNode.dispose();
    _maxPriceNode.dispose();
  }

  void _onBottomResetPressed(BuildContext context) {
    setState(() {
      _tempFilter = const SearchFilterParam();
      _tempPriceRange = const RangeValues(0, 999999);
      _tempPriceUnitMultiplier = 1000000;

      _minPriceController.clear;
      _maxPriceController.clear;
    });
  }

  void _onBottomActionPressed(BuildContext context) {
    final filterBloc = sl<SearchFilterBloc>();

    final finalMinPrice = _tempPriceRange.start * _tempPriceUnitMultiplier;
    final finalMaxPrice = _tempPriceRange.end * _tempPriceUnitMultiplier;

    final finalFilter = _tempFilter.copyWith(
      minPrice: finalMinPrice,
      maxPrice: finalMaxPrice,
    );

    filterBloc.add(SearchFilterEvent.filterChanged(finalFilter));

    filterBloc.add(SearchFilterEvent.priceRangeChanged(_tempPriceRange));

    filterBloc
        .add(SearchFilterEvent.priceUnitChanged(_tempPriceUnitMultiplier));

    context.pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: sl<SearchFilterBloc>(),
        child: BlocConsumer<SearchFilterBloc, SearchFilterState>(
            listener: (context, state) {
          final dialogObserver = sl<DialogObserverBloc>();

          if (state.failure?.type != null &&
              !dialogObserver.state.isDialogOpen) {
            DisplayError.handle(
              context: context,
              errerrType: state.failure!.type,
              apiMessage: state.failure!.err,
            );
          }
        }, builder: (context, filterState) {
          final viewModel = SearchFilterViewModel(
            filterState: filterState,
            tempFilter: _tempFilter,
            tempPriceRange: _tempPriceRange,
            tempPriceUnitMultiplier: _tempPriceUnitMultiplier,
          );
          return SearchFilter(
            actionLabel: viewModel.actionLabel,
            title: '',
            isIncrease: true,

            provinceOptions: viewModel.provinceOptions,
            selectedProvinceId: _tempFilter.provinceId,

            wardOptions: viewModel.wardOptions,
            selectedWardId: viewModel.validWardId,

            statusOptions: viewModel.statusOptions,

            categoryOptions: viewModel.categoryOptions,

            minPriceController: _minPriceController,
            maxPriceController: _maxPriceController,
            minPriceNode: _minPriceNode,
            maxPriceNode: _maxPriceNode,

            priceRange: _tempPriceRange,
            priceUnit: viewModel.priceUnitShort,
            itemPrices: itemUnit,

            selectedPriceUnit: _tempPriceUnitMultiplier,

            // --- logic callback ---
            onProvinceSelected: (selectedId) {
              if (selectedId == null) return;
              // Nếu tỉnh/TP được chọn khác với tỉnh/TP hiện tại trong bộ lọc temp
              if (selectedId != _tempFilter.provinceId) {
                // Cập nhật trạng thái tạm thời
                setState(() {
                  _tempFilter = _tempFilter.copyWith(
                      provinceId: selectedId, wardId: null);
                });

                _provinceBloc.add(SelectEvent.select(value: selectedId));
                _wardBloc.add(SelectEvent.reset());

                // Gửi event để BLoC gọi API lấy danh sách phường/xã
                context
                    .read<SearchFilterBloc>()
                    .add(SearchFilterEvent.provinceChanged(selectedId));
              }
            },

            onWardSelected: (selectedId) {
              setState(() {
                _tempFilter = _tempFilter.copyWith(wardId: selectedId);
              });
              _wardBloc.add(SelectEvent.select(value: selectedId));
            },

            onStatusSelected: (selectedValue) {
              // Tìm tên hiển thị được chọn
              final selectedDisplayName = selectedValue.entries
                  .firstWhere((e) => e.value,
                      orElse: () => const MapEntry('', false))
                  .key;

              // Dùng map đã tạo để tìm giá trị API tương ứng (vd: 'selling')
              final String apiValue = itemStatus[selectedDisplayName] ?? '';

              setState(() {
                _tempFilter = _tempFilter.copyWith(status: apiValue);
              });
            },

            onCategorySelected: (selectedMap) {
              // Lấy ra danh sách tên các category được chọn (value = true)
              final selectedNames =
                  selectedMap.entries.where((e) => e.value).map((e) => e.key);
              // Từ danh sách tên, tìm lại ID tương ứng trong list allCategories
              final List<int> newSelectedIds = filterState.categories
                  .where((c) => selectedNames.contains(c.name))
                  .map((c) => c.id)
                  .toList();

              setState(() {
                _tempFilter = _tempFilter.copyWith(categoryIds: newSelectedIds);
              });
            },

            onCategoryActionAll: () async {
              final result = await showModalBottomSheet<Map<String, bool>>(
                context: context,
                isScrollControlled: true,
                builder: (_) => BottomSheetFilter(
                  values: viewModel.categoryOptions,
                ),
              );

              if (result != null) {
                final selectedNames =
                    result.entries.where((e) => e.value).map((e) => e.key);
                final List<int> newSelectedIds = filterState.categories
                    .where((c) => selectedNames.contains(c.name))
                    .map((c) => c.id)
                    .toList();

                // final newFilter =
                //     _tempFilter.copyWith(categoryIds: newSelectedIds);
                // context
                //     .read<SearchFilterBloc>()
                //     .add(SearchFilterEvent.filterChanged(newFilter));
                setState(() {
                  _tempFilter =
                      _tempFilter.copyWith(categoryIds: newSelectedIds);
                });
              }
            },

            onPriceRangeChanged: (newRange) {
              // context
              //     .read<SearchFilterBloc>()
              //     .add(SearchFilterEvent.priceRangeChanged(newRange));
              setState(() {
                _tempPriceRange = newRange;
                if (!_minPriceNode.hasFocus) {
                  _minPriceController.text = newRange.start.toInt().toString();
                }
                if (!_maxPriceNode.hasFocus) {
                  _maxPriceController.text = newRange.end.toInt().toString();
                }
              });
            },

            onPriceUnitChanged: (newMultiplier) {
              if (newMultiplier != null) {
                setState(() {
                  _tempPriceUnitMultiplier = newMultiplier;
                });
                _priceUnitBloc.add(SelectEvent.select(value: newMultiplier));
              }
            },

            onBottomActionPressed: () => _onBottomActionPressed(context),
            onBottomResetPressed: () => _onBottomResetPressed(context),
            provinceBloc: _provinceBloc,
            wardBloc: _wardBloc,
            priceUnitBloc: _priceUnitBloc,
          );
        }));
  }
}
