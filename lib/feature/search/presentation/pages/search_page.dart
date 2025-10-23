import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/blocs/search_filter_bloc.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search_widget_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatefulWidget {
  final String? filterCategory;
  const SearchPage({super.key, this.filterCategory});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  final _searchController = TextEditingController();
  final _debouncer = Debouncer(seconds: 1);
  late final PaginatorBloc<RealEstateEntity, SearchFilterParam>
      _searchPaginatorBloc;
  late final SearchFilterBloc _searchFilterBloc;
  late final ScrollController _scrollController;
  bool _isSortButtonVisible = true;
  final int _limit = 5;

  @override
  void initState() {
    super.initState();
    _searchPaginatorBloc =
        sl<PaginatorBloc<RealEstateEntity, SearchFilterParam>>();
    _searchFilterBloc = sl<SearchFilterBloc>();
    _searchPaginatorBloc.add(LoadInitial<RealEstateEntity, SearchFilterParam>(
      usecase: sl<SearchRealEstatesUsecase>(),
      limit: _limit,
      param: _searchFilterBloc.state.filter,
    ));
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.position.pixels >=
                _scrollController.position.maxScrollExtent &&
            !_searchPaginatorBloc.state.isLastPage) {
          _searchPaginatorBloc
              .add(LoadMore<RealEstateEntity, SearchFilterParam>(
            usecase: sl<SearchRealEstatesUsecase>(),
            limit: _limit,
            param: _searchFilterBloc.state.filter,
          ));
        }
        _handleScroll();
      });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debouncer.dispose();
    _scrollController.dispose();
    _searchPaginatorBloc.close();
    super.dispose();
  }

  void _handleScroll() {
    final direction = _scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.reverse && _isSortButtonVisible) {
      setState(() => _isSortButtonVisible = false);
    } else if (direction == ScrollDirection.forward && !_isSortButtonVisible) {
      setState(() => _isSortButtonVisible = true);
    }
  }

  void _onLoadMoreWhenNotScrollable() {
    if (!_scrollController.hasClients ||
        _scrollController.position.maxScrollExtent > 0) {
      return;
    }

    if (_scrollController.position.pixels == 0 &&
        !_searchPaginatorBloc.state.isLoadMore &&
        !_searchPaginatorBloc.state.isLoading &&
        !_searchPaginatorBloc.state.isLastPage) {
      _searchPaginatorBloc.add(LoadMore<RealEstateEntity, SearchFilterParam>(
        usecase: sl<SearchRealEstatesUsecase>(),
        limit: _limit,
        param: _searchFilterBloc.state.filter,
      ));
    }
  }

  void _onSearchChanged(String keyword) {
    _debouncer.run(() {
      final newFilter =
          _searchFilterBloc.state.filter.copyWith(keyword: keyword);
      _searchFilterBloc.add(SearchFilterEvent.filterChanged(newFilter));

      _searchPaginatorBloc.add(LoadInitial<RealEstateEntity, SearchFilterParam>(
        usecase: sl<SearchRealEstatesUsecase>(),
        limit: _limit,
        param: newFilter,
      ));
    });
  }

  Future<void> _navigateToFilterPage() async {
    final result = await context.push<bool>('/search/filter');
    if (result == true && mounted) {
      _searchPaginatorBloc.add(LoadInitial<RealEstateEntity, SearchFilterParam>(
        usecase: sl<SearchRealEstatesUsecase>(),
        limit: _limit,
        param: _searchFilterBloc.state.filter,
      ));
    }
  }

  void _onSortPressed() {
    final currentFilter = _searchFilterBloc.state.filter;
    String? newSortValue;

    if (currentFilter.priceSort == null) {
      // Từ mặc định -> Tăng dần
      newSortValue = 'asc';
    } else if (currentFilter.priceSort == 'asc') {
      // Từ Tăng dần -> Giảm dần
      newSortValue = 'desc';
    } else {
      // Từ Giảm dần -> Về mặc định
      newSortValue = null;
    }

    // 3. Tạo bộ lọc mới với giá trị sắp xếp đã cập nhật
    final newFilter = SearchFilterParam(
      keyword: currentFilter.keyword,
      provinceId: currentFilter.provinceId,
      wardId: currentFilter.wardId,
      status: currentFilter.status,
      minPrice: currentFilter.minPrice,
      maxPrice: currentFilter.maxPrice,
      categoryIds: currentFilter.categoryIds,
      featured: currentFilter.featured,
      priceSort: newSortValue,
    );
    // 4. Cập nhật state của bộ lọc
    _searchFilterBloc.add(SearchFilterEvent.filterChanged(newFilter));

    // 5. Gọi lại API từ đầu với bộ lọc mới
    _searchPaginatorBloc.add(LoadInitial<RealEstateEntity, SearchFilterParam>(
      usecase: sl<SearchRealEstatesUsecase>(),
      limit: _limit,
      param: newFilter,
    ));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _searchPaginatorBloc,
        ),
        BlocProvider.value(
          value: _searchFilterBloc,
        ),
      ],
      child: UnfocusWidget(
        child: Scaffold(
          appBar: CustomAppbar(
            title: Text('Tìm kiếm',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w600)),
            automaticallyImplyLeading: true,
            isDivider: false,
          ),
          body: SafeArea(
            minimum: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Row(
                  spacing: 12.w,
                  children: [
                    Expanded(
                      child: CustomSearchBar(
                        controller: _searchController,
                        hintText: 'Tìm tên bất động sản',
                        onChanged: _onSearchChanged,
                      ),
                    ),
                    CustomIconButton(
                      onPressed: _navigateToFilterPage,
                      icon: Icons.filter_alt,
                      label: 'Lọc',
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                BlocBuilder<SearchFilterBloc, SearchFilterState>(
                  builder: (context, filterState) {
                    final currentSort = filterState.filter.priceSort;
                    IconData sortIcon;

                    if (currentSort == null) {
                      sortIcon = Icons.north;
                    } else if (currentSort == 'asc') {
                      sortIcon = Icons.south;
                    } else {
                      // currentSort == 'desc'
                      sortIcon = Icons.swap_vert;
                    }
                    return AnimatedContainer(
                      alignment: Alignment.centerRight,
                      duration: const Duration(milliseconds: 200),
                      height: _isSortButtonVisible ? 50.h : 0,
                      child: Visibility(
                        visible: _isSortButtonVisible,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 16.h, left: 16.w, right: 16.w),
                          child: CustomIconButton(
                            label: "Sắp xếp theo giá",
                            icon: sortIcon,
                            iconPosition: IconPosition.right,
                            backgroundColor:
                                BackgroundColors.backgroundDefaultSecondary,
                            textColor: TextColors.textDefaultPrimary,
                            iconColor: IconColors.iconDefaultPrimary,
                            onPressed: _onSortPressed,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: BlocConsumer<
                      PaginatorBloc<RealEstateEntity, SearchFilterParam>,
                      PaginatorState<RealEstateEntity>>(
                    bloc: _searchPaginatorBloc,
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
                      if (state.isLoaded) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (mounted) _onLoadMoreWhenNotScrollable();
                        });
                      }
                    },
                    builder: (context, state) {
                      return RefreshIndicator.adaptive(
                        onRefresh: () async {
                          _searchPaginatorBloc.add(
                              LoadInitial<RealEstateEntity, SearchFilterParam>(
                            usecase: sl<SearchRealEstatesUsecase>(),
                            limit: _limit,
                            param: _searchFilterBloc.state.filter,
                          ));
                        },
                        child: _buildBody(state),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(PaginatorState<RealEstateEntity> state) {
    if (state.isLoading && state.items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.isLoaded && state.items.isEmpty) {
      return Center(
          child: Text('Không có thông tin nào.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: TextColors.textDefaultSecondary,
                  )));
    }
    return SearchList(
        searchRealEstates: state.items,
        scrollController: _scrollController,
        isLoadMore: state.isLoadMore);
  }

  @override
  bool get wantKeepAlive => true;
}
