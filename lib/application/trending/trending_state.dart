part of 'trending_bloc.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState({
    required bool isLoading,
    List<Trendings>? trendings,
    required Option<Either<MainFailure, List<Trendings>>>
        trendingsFailureOrSuccessOption,
  }) = _TrendingState;

  factory TrendingState.initial() {
    return TrendingState(
        isLoading: false, trendingsFailureOrSuccessOption: None());
  }
}
