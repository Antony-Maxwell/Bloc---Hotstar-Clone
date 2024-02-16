import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending.freezed.dart';
part 'trending.g.dart';

@freezed
class Trendings with _$Trendings {
  const factory Trendings({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? title,
  }) = _Trendings;

  factory Trendings.fromJson(Map<String, dynamic> json) =>
      _$TrendingsFromJson(json);
}
