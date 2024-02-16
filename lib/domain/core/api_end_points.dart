import 'package:mini_project/core/constants/strings.dart';
import 'package:mini_project/infrastructure/api_key.dart';

class ApiEndPoints {
  static const trending = '$kBaseUrl/trending/all/day?api_key=$apiKey';
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  static const hotAndNewMovie = '$kBaseUrl/discover/movie?api_key=$apiKey';
  static const hotAndNewTv = '$kBaseUrl/discover/tv?api_key=$apiKey';
  static const watchList = '$kBaseUrl/account/$accountId/watchlist?api_key=$apiKey';

}
