part of 'paginator_bloc.dart';

@freezed
sealed class PaginatorState<T> with _$PaginatorState<T> {
  const factory PaginatorState({
    @Default(false) bool isLastPage,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadMore,
    @Default(false) bool isLoaded,
    @Default([]) List<T> items,
    Failure? failure,
    T? lastRemovedItem,
    List<T>? lastRemovedItems,
    int? lastRemovedIndex,
  }) = _PaginatorState<T>;
}
