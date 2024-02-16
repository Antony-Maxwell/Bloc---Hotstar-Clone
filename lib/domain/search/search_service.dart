import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/search/model/search_resp/search_resp/search_resp.dart';
import 'package:dartz/dartz.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
