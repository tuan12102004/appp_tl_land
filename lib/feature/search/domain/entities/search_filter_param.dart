class SearchFilterParam {
  final String? keyword;
  final int? provinceId;
  final int? wardId;
  final String? status; // sold, selling, rented, renting
  final double? minPrice;
  final double? maxPrice;
  final String? priceSort; // asc, desc
  final List<int>? categoryIds;
  final bool? featured;

  const SearchFilterParam({
    this.keyword,
    this.provinceId,
    this.wardId,
    this.status,
    this.minPrice,
    this.maxPrice,
    this.priceSort,
    this.categoryIds,
    this.featured,
  });

  SearchFilterParam copyWith({
    String? keyword,
    int? provinceId,
    int? wardId,
    String? status,
    double? minPrice,
    double? maxPrice,
    String? priceSort,
    List<int>? categoryIds,
    bool? featured,
  }) {
    return SearchFilterParam(
      keyword: keyword ?? this.keyword,
      provinceId: provinceId ?? this.provinceId,
      wardId: wardId ?? this.wardId,
      status: status ?? this.status,
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      priceSort: priceSort ?? this.priceSort,
      categoryIds: categoryIds ?? this.categoryIds,
      featured: featured ?? this.featured,
    );
  }

  Map<String, dynamic> toQueryParameters() {
    return {
      if (keyword != null && keyword!.isNotEmpty)
        'keyword': keyword,
      if (provinceId != null) 'province_id': provinceId,
      if (wardId != null) 'ward_id': wardId,
      if (status != null) 'status': status,
      if (minPrice != null) 'price_min': minPrice,
      if (maxPrice != null) 'price_max': maxPrice,
      if (priceSort != null) 'price_sort': priceSort,
      if (featured != null) 'featured': featured! ? 1 : 0,
      if (categoryIds != null && categoryIds!.isNotEmpty)
        'category_ids[]': categoryIds,
    };
  }
}
