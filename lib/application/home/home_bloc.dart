import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/hot_and_new/hot_and_new_service.dart';
import 'package:mini_project/domain/hot_and_new/model/hot_and_new_resp/hot_and_new_resp.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HotAndNewService _homeService;
  HomeBloc(this._homeService) : super(HomeState.initial()) {
    on<GetHomeScreenData>((event, emit) async {

      if(state.latestRleased.isNotEmpty && state.popularMovies.isNotEmpty && state.popularShows.isNotEmpty){
        emit(HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            latestRleased: state.latestRleased,
            popularShows: state.popularShows,
            popularMovies: state.popularMovies,
            topTenTv: state.topTenTv,
            isLoading: false,
            hasError: false));
            return;
      }
      // send loading to ui

      emit(
        state.copyWith(
          isLoading: true,
          hasError: false,
        ),
      );

      //get data
      final movieResult = await _homeService.getHotAndNewMovieData();
      final tvResult = await _homeService.getHotAndNewTvData();
      // transfrom data

      final _state1 = movieResult.fold((MainFailure failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          latestRleased: [],
          popularShows: [],
          popularMovies: [],
          topTenTv: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResp resp) {
        final latestReleased = resp.results;
        final popularShows = resp.results;
        final popularMovies = resp.results;
        final topTenTv = resp.results;
        latestReleased.shuffle();
        popularShows.shuffle();
        popularMovies.shuffle();
        topTenTv.shuffle();
        return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            latestRleased: latestReleased,
            popularShows: popularShows,
            popularMovies: popularMovies,
            topTenTv: state.topTenTv,
            isLoading: false,
            hasError: false);
      });

      emit(_state1);

      final _state2 = tvResult.fold((MainFailure failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          latestRleased: [],
          popularShows: [],
          popularMovies: [],
          topTenTv: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResp resp) {
        final topTenTv = resp.results;
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          latestRleased: state.latestRleased,
          popularShows: state.popularShows,
          popularMovies: state.popularMovies,
          topTenTv: topTenTv,
          isLoading: false,
          hasError: false,
        );
      });

      emit(_state2);
    });
  }
}
