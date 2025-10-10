import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/blocs/search_filter_bloc.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search/search_filter_constants.dart';
import 'package:flutter/material.dart';

class SearchFilterViewModel {
  final SearchFilterState filterState;
  final SearchFilterParam tempFilter;
  final RangeValues tempPriceRange;
  final int tempPriceUnitMultiplier;

  SearchFilterViewModel({
    required this.filterState,
    required this.tempFilter,
    required this.tempPriceRange,
    required this.tempPriceUnitMultiplier,
  });

  // --- logic province + ward ---
  Map<int, String> get provinceOptions {
    return {
      for (var province in filterState.provinces)
        province.id!: province.name ?? 'N/A'
    };
  }

  // Chuyển đổi List<WardEntity> thành Map<int, String>
  Map<int, String> get wardOptions {
    return {for (var ward in filterState.wards) ward.id!: ward.name ?? 'N/A'};
  }

  // Kiểm tra xem phường đã chọn có còn hợp lệ sau khi đổi tỉnh không
  int? get validWardId {
    return wardOptions.containsKey(tempFilter.wardId)
        ? tempFilter.wardId
        : null;
  }

  // --- logic status ---
  // Tạo Map<String, bool> để truyền cho widget StatusFilter
  Map<String, bool> get statusOptions {
    final String currentStatus = tempFilter.status ?? '';
    return {
      for (var entry in itemStatus.entries)
        // Key là tên hiển thị (vd: 'Đang bán')
        // Value là true/false dựa trên việc so sánh với state hiện tại
        entry.key: currentStatus == entry.value,
    };
  }

  // --- logic cat ---
  Map<String, bool> get categoryOptions {
    final selectedIds = tempFilter.categoryIds ?? [];
    return {
      for (var category in filterState.categories)
        // Key: tên category, Value: true nếu id của nó nằm trong danh sách đã chọn
        category.name ?? '': selectedIds.contains(category.id)
    };
  }

  // --- logic price ---
  // hiển thị đơn vị
  String get priceUnitShort {
    final String unitLong = itemUnit[tempPriceUnitMultiplier] ?? '';
    return unitLong.replaceFirst('Đơn vị: ', '');
  }

  // --- logic btn áp dụng ---
  String get actionLabel {
    int activeFilterCount = 0;
    if (tempFilter.provinceId != null) activeFilterCount++;
    if (validWardId != null) activeFilterCount++;
    if ((tempFilter.status ?? '').isNotEmpty) activeFilterCount++;
    activeFilterCount += (tempFilter.categoryIds ?? []).length;
    if (tempPriceRange != const RangeValues(0, 999999)) {
      activeFilterCount++;
    }
    return activeFilterCount > 0 ? 'Áp dụng ($activeFilterCount)' : 'Áp dụng';
  }
}
