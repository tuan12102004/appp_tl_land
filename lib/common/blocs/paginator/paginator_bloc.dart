import 'package:app_tl_land_3212/core/errors/failure.dart';
import 'package:app_tl_land_3212/core/param/paginator_param.dart';
import 'package:app_tl_land_3212/core/usecase/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginator_event.dart';
part 'paginator_state.dart';
part 'paginator_bloc.freezed.dart';

class PaginatorBloc<T, Param>
    extends Bloc<PaginatorEvent<T, Param>, PaginatorState<T>> {
  PaginatorBloc() : super(PaginatorState<T>()) {
    on<LoadInitial<T, Param>>(_onLoadInitial);
    on<LoadMore<T, Param>>(_onLoadMore);
    on<UpdateItems<T, Param>>(_onUpdateItems);
  }

  int _currentPage = 1;

  // Load initial
  void _onLoadInitial(
    LoadInitial<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        failure: null,
        isLastPage: false,
        isLoadMore: false,
        isLoaded: false,
        items: [],
      ),
    );
    _currentPage = 1;
    final res = await event.usecase.call(
      PaginatorParam<Param>(
        limit: event.limit,
        page: _currentPage,
        param: event.param,
      ),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          failure: failure,
          items: state.items,
          isLastPage: true,
        ),
      ),
      (data) => emit(
        state.copyWith(
          isLoading: false,
          items: data,
          isLastPage: data.length < event.limit,
          isLoaded: true,
        ),
      ),
    );
  }

  // Load more
  void _onLoadMore(
    LoadMore<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) async {
    if (state.isLastPage || state.isLoading || state.isLoadMore) {
      return;
    }
    emit(
      state.copyWith(
        isLoading: state.isLoading,
        failure: state.failure,
        isLastPage: state.isLastPage,
        isLoadMore: true,
        items: state.items,
        isLoaded: false,
      ),
    );
    _currentPage++;
    final res = await event.usecase.call(
      PaginatorParam<Param>(
        limit: event.limit,
        page: _currentPage,
        param: event.param,
      ),
    );
    res.fold(
      (failure) => emit(
        state.copyWith(
          isLoadMore: false,
          failure: failure,
          isLastPage: true,
          items: state.items,
        ),
      ),
      (data) => emit(
        state.copyWith(
          isLoadMore: false,
          items: List<T>.from([...state.items, ...data]),
          isLastPage: data.length < event.limit,
          isLoaded: true,
        ),
      ),
    );
  }

  // Update items
  void _onUpdateItems(
    UpdateItems<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) => emit(state.copyWith(items: event.newItems));
}
