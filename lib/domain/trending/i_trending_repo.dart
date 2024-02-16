import 'package:dartz/dartz.dart';
import 'package:mini_project/domain/core/failures/main_failure.dart';
import 'package:mini_project/domain/trending/models/trending.dart';

abstract class ItrendingRepo {
  Future<Either<MainFailure, List<Trendings>>> getTrendingImages();
}
