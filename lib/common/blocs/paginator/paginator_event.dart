part of 'paginator_bloc.dart';

@freezed
sealed class PaginatorEvent<T, Param> with _$PaginatorEvent<T, Param> {
  const factory PaginatorEvent.loadInitial({
    required Usecase<List<T>, PaginatorParam<Param>> usecase,
    @Default(10) int limit,
    Param? param,
  }) = LoadInitial<T, Param>;

  const factory PaginatorEvent.loadMore({
    required Usecase<List<T>, PaginatorParam<Param>> usecase,
    @Default(10) int limit,
    Param? param,
  }) = LoadMore<T, Param>;

  const factory PaginatorEvent.updateItems({required List<T> newItems}) =
      UpdateItems<T, Param>;

  const factory PaginatorEvent.removeItem({
    required bool Function(T item) where,
  }) = RemoveItem<T, Param>;
  const factory PaginatorEvent.restoreLastRemoved() =
      RestoreLastRemoved<T, Param>;
  const factory PaginatorEvent.removeAll() = RemoveAll<T, Param>;
  const factory PaginatorEvent.restoreAll() = RestoreAll<T, Param>;
}
