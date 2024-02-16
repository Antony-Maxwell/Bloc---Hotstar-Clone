part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResult> searchResultList,
    required List<Trendings> searchIdle,
    required bool isLoading,
    required bool isError,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      searchResultList: [], searchIdle: [], isLoading: false, isError: false);
}
