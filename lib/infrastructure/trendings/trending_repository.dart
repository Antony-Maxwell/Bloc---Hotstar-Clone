import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/core/api_end_points.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/trending/i_trending_repo.dart';
import 'package:mini_project/domain/trending/models/trending.dart';

@LazySingleton(as: ItrendingRepo)
class TrendingRepository implements ItrendingRepo {
  @override
  Future<Either<MainFailure, List<Trendings>>> getTrendingImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.trending);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final trendingList = (response.data['results'] as List).map((e) {
          return Trendings.fromJson(e);
        });
        print(trendingList);
        return Right(trendingList.toList());
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
