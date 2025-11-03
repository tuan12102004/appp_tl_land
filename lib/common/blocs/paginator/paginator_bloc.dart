import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginator_event.dart';
part 'paginator_state.dart';
part 'paginator_bloc.freezed.dart';

class PaginatorBloc<T, Param>
    extends Bloc<PaginatorEvent<T, Param>, PaginatorState<T>> {
  PaginatorBloc() : super(PaginatorState<T>(isLoading: true)) {
    on<LoadInitial<T, Param>>(_onLoadInitial);
    on<LoadMore<T, Param>>(_onLoadMore);
    on<UpdateItem<T, Param>>(_onUpdateItem);
    on<UpdateAllItems<T, Param>>(_onUpdateAllItems);
    on<RemoveItem<T, Param>>(_onRemoveItem);
    on<RestoreLastRemoved<T, Param>>(_onRestoreLastRemoved);
    on<RemoveAll<T, Param>>(_onRemoveAll);
    on<RestoreAll<T, Param>>(_onRestoreAll);
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

  // Update item
  void _onUpdateItem(
    UpdateItem<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) {
    final updatedList = List<T>.from(state.items);
    final index = updatedList.indexWhere(event.where);

    if (index != -1) {
      updatedList[index] = event.newItem;
      emit(state.copyWith(items: updatedList));
    }
  }

  void _onUpdateAllItems(
    UpdateAllItems<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) {
    final updatedList = state.items.map((item) => event.update(item)).toList();

    emit(state.copyWith(items: updatedList));
  }

  void _onRemoveItem(
    RemoveItem<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) {
    final updated = List<T>.from(state.items);
    final index = updated.indexWhere(event.where);

    if (index != -1) {
      final removed = updated.removeAt(index);

      emit(state.copyWith(
        items: updated,
        lastRemovedItem: removed,
        lastRemovedIndex: index,
      ));
    }
  }

  void _onRestoreLastRemoved(
    RestoreLastRemoved<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) {
    if (state.lastRemovedItem == null || state.lastRemovedIndex == null) return;

    final updated = List<T>.from(state.items);
    final index = state.lastRemovedIndex!;

    // chèn lại đúng vị trí
    if (index >= 0 && index <= updated.length) {
      updated.insert(index, state.lastRemovedItem as T);
    } else {
      updated.add(state.lastRemovedItem as T);
    }

    emit(state.copyWith(
      items: updated,
      lastRemovedItem: null,
      lastRemovedIndex: null,
    ));
  }

  void _onRemoveAll(
    RemoveAll<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) {
    // Lưu lại tất cả item đang có để có thể restore
    final removedItems = List<T>.from(state.items);

    emit(state.copyWith(
      items: [],
      lastRemovedItems: removedItems,
    ));
  }

  void _onRestoreAll(
    RestoreAll<T, Param> event,
    Emitter<PaginatorState<T>> emit,
  ) {
    if (state.lastRemovedItems == null || state.lastRemovedItems!.isEmpty)
      return;

    emit(state.copyWith(
      items: state.lastRemovedItems!,
      lastRemovedItems: null,
    ));
  }
}
