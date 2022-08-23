// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sorting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SortingState {
  int get length => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  List<Node> get array => throw _privateConstructorUsedError;
  Algorithm get algorithm => throw _privateConstructorUsedError;
  Duration get speed => throw _privateConstructorUsedError;
  double get maxHeight => throw _privateConstructorUsedError;
  bool get sorting => throw _privateConstructorUsedError;
  bool get playing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SortingStateCopyWith<SortingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortingStateCopyWith<$Res> {
  factory $SortingStateCopyWith(
          SortingState value, $Res Function(SortingState) then) =
      _$SortingStateCopyWithImpl<$Res>;
  $Res call(
      {int length,
      Color color,
      List<Node> array,
      Algorithm algorithm,
      Duration speed,
      double maxHeight,
      bool sorting,
      bool playing});
}

/// @nodoc
class _$SortingStateCopyWithImpl<$Res> implements $SortingStateCopyWith<$Res> {
  _$SortingStateCopyWithImpl(this._value, this._then);

  final SortingState _value;
  // ignore: unused_field
  final $Res Function(SortingState) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? color = freezed,
    Object? array = freezed,
    Object? algorithm = freezed,
    Object? speed = freezed,
    Object? maxHeight = freezed,
    Object? sorting = freezed,
    Object? playing = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      array: array == freezed
          ? _value.array
          : array // ignore: cast_nullable_to_non_nullable
              as List<Node>,
      algorithm: algorithm == freezed
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as Algorithm,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as Duration,
      maxHeight: maxHeight == freezed
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      sorting: sorting == freezed
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as bool,
      playing: playing == freezed
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SortingStateCopyWith<$Res>
    implements $SortingStateCopyWith<$Res> {
  factory _$$_SortingStateCopyWith(
          _$_SortingState value, $Res Function(_$_SortingState) then) =
      __$$_SortingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int length,
      Color color,
      List<Node> array,
      Algorithm algorithm,
      Duration speed,
      double maxHeight,
      bool sorting,
      bool playing});
}

/// @nodoc
class __$$_SortingStateCopyWithImpl<$Res>
    extends _$SortingStateCopyWithImpl<$Res>
    implements _$$_SortingStateCopyWith<$Res> {
  __$$_SortingStateCopyWithImpl(
      _$_SortingState _value, $Res Function(_$_SortingState) _then)
      : super(_value, (v) => _then(v as _$_SortingState));

  @override
  _$_SortingState get _value => super._value as _$_SortingState;

  @override
  $Res call({
    Object? length = freezed,
    Object? color = freezed,
    Object? array = freezed,
    Object? algorithm = freezed,
    Object? speed = freezed,
    Object? maxHeight = freezed,
    Object? sorting = freezed,
    Object? playing = freezed,
  }) {
    return _then(_$_SortingState(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      array: array == freezed
          ? _value._array
          : array // ignore: cast_nullable_to_non_nullable
              as List<Node>,
      algorithm: algorithm == freezed
          ? _value.algorithm
          : algorithm // ignore: cast_nullable_to_non_nullable
              as Algorithm,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as Duration,
      maxHeight: maxHeight == freezed
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      sorting: sorting == freezed
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as bool,
      playing: playing == freezed
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SortingState implements _SortingState {
  const _$_SortingState(
      {required this.length,
      required this.color,
      required final List<Node> array,
      required this.algorithm,
      required this.speed,
      required this.maxHeight,
      required this.sorting,
      required this.playing})
      : _array = array;

  @override
  final int length;
  @override
  final Color color;
  final List<Node> _array;
  @override
  List<Node> get array {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_array);
  }

  @override
  final Algorithm algorithm;
  @override
  final Duration speed;
  @override
  final double maxHeight;
  @override
  final bool sorting;
  @override
  final bool playing;

  @override
  String toString() {
    return 'SortingState(length: $length, color: $color, array: $array, algorithm: $algorithm, speed: $speed, maxHeight: $maxHeight, sorting: $sorting, playing: $playing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortingState &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other._array, _array) &&
            const DeepCollectionEquality().equals(other.algorithm, algorithm) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.maxHeight, maxHeight) &&
            const DeepCollectionEquality().equals(other.sorting, sorting) &&
            const DeepCollectionEquality().equals(other.playing, playing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_array),
      const DeepCollectionEquality().hash(algorithm),
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(maxHeight),
      const DeepCollectionEquality().hash(sorting),
      const DeepCollectionEquality().hash(playing));

  @JsonKey(ignore: true)
  @override
  _$$_SortingStateCopyWith<_$_SortingState> get copyWith =>
      __$$_SortingStateCopyWithImpl<_$_SortingState>(this, _$identity);
}

abstract class _SortingState implements SortingState {
  const factory _SortingState(
      {required final int length,
      required final Color color,
      required final List<Node> array,
      required final Algorithm algorithm,
      required final Duration speed,
      required final double maxHeight,
      required final bool sorting,
      required final bool playing}) = _$_SortingState;

  @override
  int get length;
  @override
  Color get color;
  @override
  List<Node> get array;
  @override
  Algorithm get algorithm;
  @override
  Duration get speed;
  @override
  double get maxHeight;
  @override
  bool get sorting;
  @override
  bool get playing;
  @override
  @JsonKey(ignore: true)
  _$$_SortingStateCopyWith<_$_SortingState> get copyWith =>
      throw _privateConstructorUsedError;
}
