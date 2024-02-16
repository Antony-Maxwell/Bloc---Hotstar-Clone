import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/hot_and_new/hot_and_new_service.dart';
import 'package:mini_project/domain/hot_and_new/model/hot_and_new_resp/hot_and_new_resp.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final HotAndNewService _hotAndNewService;
  HotAndNewBloc(this._hotAndNewService) : super(HotAndNewState.initial()) {
    on<LoadDataInComingSoon>((event, emit) async {

      if(state.comingSoonList.isNotEmpty){
        emit(
        HotAndNewState(
          comingSoonList: state.comingSoonList,
          newlyAddedList: [],
          isLoading: false,
          hasError: false,
        ),
      );
      return;
      }
      //send loading to ui
      emit(
        const HotAndNewState(
          comingSoonList: [],
          newlyAddedList: [],
          isLoading: true,
          hasError: false,
        ),
      );
      //get data from remote
      final _result = await _hotAndNewService.getHotAndNewMovieData();

      //data to sate 
      final newState = _result.fold((MainFailure failure) {
        return const HotAndNewState(
          comingSoonList: [],
          newlyAddedList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResp resp) {
        return HotAndNewState(
          comingSoonList: resp.results,
          newlyAddedList: state.newlyAddedList,
          isLoading: false,
          hasError: false,
        );
      });
      emit(newState);
    });

    on<LoadDataInNewlyAdded>((event, emit) async{
      if(state.newlyAddedList.isNotEmpty){
        emit(
        HotAndNewState(
          comingSoonList: [],
          newlyAddedList: state.newlyAddedList,
          isLoading: false,
          hasError: false,
        ),
      );
      return;
      }
      //send loading to ui
      emit(
        const HotAndNewState(
          comingSoonList: [],
          newlyAddedList: [],
          isLoading: true,
          hasError: false,
        ),
      );
      //get data from remote
      final _result = await _hotAndNewService.getHotAndNewTvData();

      //data to sate 
      final newState = _result.fold((MainFailure failure) {
        return const HotAndNewState(
          comingSoonList: [],
          newlyAddedList: [],
          isLoading: false,
          hasError: true,
        );
      }, (HotAndNewResp resp) {
        return HotAndNewState(
          comingSoonList: state.comingSoonList,
          newlyAddedList: resp.results,
          isLoading: false,
          hasError: false,
        );
      });
      emit(newState);
    });
  }
}
