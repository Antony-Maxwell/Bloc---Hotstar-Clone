import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/trending/i_trending_repo.dart';
import 'package:mini_project/domain/trending/models/trending.dart';

part 'trending_event.dart';
part 'trending_state.dart';
part 'trending_bloc.freezed.dart';

@injectable
class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final ItrendingRepo _trendingRepo;
  TrendingBloc(this._trendingRepo) : super(TrendingState.initial()) {
    on<_GetTrendingImages>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            trendingsFailureOrSuccessOption: none(),
          ),
        );
        final Either<MainFailure, List<Trendings>> trendingsOption =
            await _trendingRepo.getTrendingImages();
        print(trendingsOption.toString());
        emit(
          trendingsOption.fold(
            (failure) => state.copyWith(
              isLoading: false,
              trendingsFailureOrSuccessOption: Some(Left(failure)),
            ),
            (success) => state.copyWith(
              isLoading: false,
              trendings: success,
              trendingsFailureOrSuccessOption: Some(Right(success)),
            ),
          ),
        );
      },
    );
  }
}
