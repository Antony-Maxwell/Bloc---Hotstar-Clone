part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<HotAndNewData> latestRleased,
    required List<HotAndNewData> popularShows,
    required List<HotAndNewData> popularMovies,
    required List<HotAndNewData> topTenTv,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      stateId: '0',
      latestRleased: [],
      popularShows: [],
      popularMovies: [],
      topTenTv: [],
      isLoading: false,
      hasError: false);
}
