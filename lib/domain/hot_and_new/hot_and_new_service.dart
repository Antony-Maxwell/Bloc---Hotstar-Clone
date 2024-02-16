import 'package:dartz/dartz.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/hot_and_new/model/hot_and_new_resp/hot_and_new_resp.dart';

abstract class HotAndNewService{

  Future<Either<MainFailure,HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailure,HotAndNewResp>> getHotAndNewTvData();

}