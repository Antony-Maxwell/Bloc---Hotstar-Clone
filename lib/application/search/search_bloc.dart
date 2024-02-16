import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/search/model/search_resp/search_resp/search_resp.dart';
import 'package:mini_project/domain/search/search_service.dart';
import 'package:mini_project/domain/trending/i_trending_repo.dart';
import 'package:mini_project/domain/trending/models/trending.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ItrendingRepo _trendingService;
  final SearchService _searchService;
  SearchBloc(this._searchService, this._trendingService)
      : super(SearchState.initial()) {
    //idle state
    on<Initialize>((event, emit) async {
      if (state.searchIdle.isNotEmpty) {
        emit(
          SearchState(
            searchResultList: [],
            searchIdle: state.searchIdle,
            isLoading: false,
            isError: false,
          ),
        );
        return;
      }
      emit(
        const SearchState(
          searchResultList: [],
          searchIdle: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result = await _trendingService.getTrendingImages();
      final _state = _result.fold((MainFailure f) {
        return const SearchState(
          searchResultList: [],
          searchIdle: [],
          isLoading: true,
          isError: false,
        );
      }, (List<Trendings> list) {
        return SearchState(
          searchResultList: [],
          searchIdle: list,
          isLoading: false,
          isError: false,
        );
      });

      emit(_state);
      // TODO: implement event handler
    });

    //search result state
    on<SearchMovie>((event, emit) async {
      emit(
        SearchState(
          searchResultList: [],
          searchIdle: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      print(_result);
      final _state = _result.fold((MainFailure f) {
        return const SearchState(
          searchResultList: [],
          searchIdle: [],
          isLoading: true,
          isError: false,
        );
      }, (SearchResp r) {
        return SearchState(
          searchResultList: r.results,
          searchIdle: [],
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
      // TODO: implement event handler
    });
  }
}
