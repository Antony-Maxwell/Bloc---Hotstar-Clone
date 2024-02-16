// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Trendings _$TrendingsFromJson(Map<String, dynamic> json) {
  return _Trendings.fromJson(json);
}

/// @nodoc
mixin _$Trendings {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingsCopyWith<Trendings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingsCopyWith<$Res> {
  factory $TrendingsCopyWith(Trendings value, $Res Function(Trendings) then) =
      _$TrendingsCopyWithImpl<$Res, Trendings>;
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class _$TrendingsCopyWithImpl<$Res, $Val extends Trendings>
    implements $TrendingsCopyWith<$Res> {
  _$TrendingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingsImplCopyWith<$Res>
    implements $TrendingsCopyWith<$Res> {
  factory _$$TrendingsImplCopyWith(
          _$TrendingsImpl value, $Res Function(_$TrendingsImpl) then) =
      __$$TrendingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "title") String? title});
}

/// @nodoc
class __$$TrendingsImplCopyWithImpl<$Res>
    extends _$TrendingsCopyWithImpl<$Res, _$TrendingsImpl>
    implements _$$TrendingsImplCopyWith<$Res> {
  __$$TrendingsImplCopyWithImpl(
      _$TrendingsImpl _value, $Res Function(_$TrendingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_$TrendingsImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingsImpl implements _Trendings {
  const _$TrendingsImpl(
      {@JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "title") required this.title});

  factory _$TrendingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingsImplFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'Trendings(posterPath: $posterPath, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingsImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingsImplCopyWith<_$TrendingsImpl> get copyWith =>
      __$$TrendingsImplCopyWithImpl<_$TrendingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingsImplToJson(
      this,
    );
  }
}

abstract class _Trendings implements Trendings {
  const factory _Trendings(
      {@JsonKey(name: "poster_path") required final String? posterPath,
      @JsonKey(name: "title") required final String? title}) = _$TrendingsImpl;

  factory _Trendings.fromJson(Map<String, dynamic> json) =
      _$TrendingsImpl.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$TrendingsImplCopyWith<_$TrendingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
