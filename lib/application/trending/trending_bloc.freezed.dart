// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrendingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrendingImages value) getTrendingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrendingImages value)? getTrendingImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrendingImages value)? getTrendingImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingEventCopyWith<$Res> {
  factory $TrendingEventCopyWith(
          TrendingEvent value, $Res Function(TrendingEvent) then) =
      _$TrendingEventCopyWithImpl<$Res, TrendingEvent>;
}

/// @nodoc
class _$TrendingEventCopyWithImpl<$Res, $Val extends TrendingEvent>
    implements $TrendingEventCopyWith<$Res> {
  _$TrendingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTrendingImagesImplCopyWith<$Res> {
  factory _$$GetTrendingImagesImplCopyWith(_$GetTrendingImagesImpl value,
          $Res Function(_$GetTrendingImagesImpl) then) =
      __$$GetTrendingImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingImagesImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$GetTrendingImagesImpl>
    implements _$$GetTrendingImagesImplCopyWith<$Res> {
  __$$GetTrendingImagesImplCopyWithImpl(_$GetTrendingImagesImpl _value,
      $Res Function(_$GetTrendingImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrendingImagesImpl implements _GetTrendingImages {
  const _$GetTrendingImagesImpl();

  @override
  String toString() {
    return 'TrendingEvent.getTrendingImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTrendingImages,
  }) {
    return getTrendingImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTrendingImages,
  }) {
    return getTrendingImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTrendingImages,
    required TResult orElse(),
  }) {
    if (getTrendingImages != null) {
      return getTrendingImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTrendingImages value) getTrendingImages,
  }) {
    return getTrendingImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTrendingImages value)? getTrendingImages,
  }) {
    return getTrendingImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTrendingImages value)? getTrendingImages,
    required TResult orElse(),
  }) {
    if (getTrendingImages != null) {
      return getTrendingImages(this);
    }
    return orElse();
  }
}

abstract class _GetTrendingImages implements TrendingEvent {
  const factory _GetTrendingImages() = _$GetTrendingImagesImpl;
}

/// @nodoc
mixin _$TrendingState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Trendings>? get trendings => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Trendings>>>
      get trendingsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingStateCopyWith<TrendingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingStateCopyWith<$Res> {
  factory $TrendingStateCopyWith(
          TrendingState value, $Res Function(TrendingState) then) =
      _$TrendingStateCopyWithImpl<$Res, TrendingState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Trendings>? trendings,
      Option<Either<MainFailure, List<Trendings>>>
          trendingsFailureOrSuccessOption});
}

/// @nodoc
class _$TrendingStateCopyWithImpl<$Res, $Val extends TrendingState>
    implements $TrendingStateCopyWith<$Res> {
  _$TrendingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? trendings = freezed,
    Object? trendingsFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      trendings: freezed == trendings
          ? _value.trendings
          : trendings // ignore: cast_nullable_to_non_nullable
              as List<Trendings>?,
      trendingsFailureOrSuccessOption: null == trendingsFailureOrSuccessOption
          ? _value.trendingsFailureOrSuccessOption
          : trendingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Trendings>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingStateImplCopyWith<$Res>
    implements $TrendingStateCopyWith<$Res> {
  factory _$$TrendingStateImplCopyWith(
          _$TrendingStateImpl value, $Res Function(_$TrendingStateImpl) then) =
      __$$TrendingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Trendings>? trendings,
      Option<Either<MainFailure, List<Trendings>>>
          trendingsFailureOrSuccessOption});
}

/// @nodoc
class __$$TrendingStateImplCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res, _$TrendingStateImpl>
    implements _$$TrendingStateImplCopyWith<$Res> {
  __$$TrendingStateImplCopyWithImpl(
      _$TrendingStateImpl _value, $Res Function(_$TrendingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? trendings = freezed,
    Object? trendingsFailureOrSuccessOption = null,
  }) {
    return _then(_$TrendingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      trendings: freezed == trendings
          ? _value._trendings
          : trendings // ignore: cast_nullable_to_non_nullable
              as List<Trendings>?,
      trendingsFailureOrSuccessOption: null == trendingsFailureOrSuccessOption
          ? _value.trendingsFailureOrSuccessOption
          : trendingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Trendings>>>,
    ));
  }
}

/// @nodoc

class _$TrendingStateImpl implements _TrendingState {
  const _$TrendingStateImpl(
      {required this.isLoading,
      final List<Trendings>? trendings,
      required this.trendingsFailureOrSuccessOption})
      : _trendings = trendings;

  @override
  final bool isLoading;
  final List<Trendings>? _trendings;
  @override
  List<Trendings>? get trendings {
    final value = _trendings;
    if (value == null) return null;
    if (_trendings is EqualUnmodifiableListView) return _trendings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<Trendings>>>
      trendingsFailureOrSuccessOption;

  @override
  String toString() {
    return 'TrendingState(isLoading: $isLoading, trendings: $trendings, trendingsFailureOrSuccessOption: $trendingsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._trendings, _trendings) &&
            (identical(other.trendingsFailureOrSuccessOption,
                    trendingsFailureOrSuccessOption) ||
                other.trendingsFailureOrSuccessOption ==
                    trendingsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_trendings),
      trendingsFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingStateImplCopyWith<_$TrendingStateImpl> get copyWith =>
      __$$TrendingStateImplCopyWithImpl<_$TrendingStateImpl>(this, _$identity);
}

abstract class _TrendingState implements TrendingState {
  const factory _TrendingState(
      {required final bool isLoading,
      final List<Trendings>? trendings,
      required final Option<Either<MainFailure, List<Trendings>>>
          trendingsFailureOrSuccessOption}) = _$TrendingStateImpl;

  @override
  bool get isLoading;
  @override
  List<Trendings>? get trendings;
  @override
  Option<Either<MainFailure, List<Trendings>>>
      get trendingsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$TrendingStateImplCopyWith<_$TrendingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
