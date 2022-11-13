// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JokeFavoriteStateTearOff {
  const _$JokeFavoriteStateTearOff();

  _JokeFavoriteState call(
      {required List<JokeModel> jokes,
      required Option<FailureModel> failureOption}) {
    return _JokeFavoriteState(
      jokes: jokes,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $JokeFavoriteState = _$JokeFavoriteStateTearOff();

/// @nodoc
mixin _$JokeFavoriteState {
  List<JokeModel> get jokes => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeFavoriteStateCopyWith<JokeFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeFavoriteStateCopyWith<$Res> {
  factory $JokeFavoriteStateCopyWith(
          JokeFavoriteState value, $Res Function(JokeFavoriteState) then) =
      _$JokeFavoriteStateCopyWithImpl<$Res>;
  $Res call({List<JokeModel> jokes, Option<FailureModel> failureOption});
}

/// @nodoc
class _$JokeFavoriteStateCopyWithImpl<$Res>
    implements $JokeFavoriteStateCopyWith<$Res> {
  _$JokeFavoriteStateCopyWithImpl(this._value, this._then);

  final JokeFavoriteState _value;
  // ignore: unused_field
  final $Res Function(JokeFavoriteState) _then;

  @override
  $Res call({
    Object? jokes = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      jokes: jokes == freezed
          ? _value.jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<JokeModel>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc
abstract class _$JokeFavoriteStateCopyWith<$Res>
    implements $JokeFavoriteStateCopyWith<$Res> {
  factory _$JokeFavoriteStateCopyWith(
          _JokeFavoriteState value, $Res Function(_JokeFavoriteState) then) =
      __$JokeFavoriteStateCopyWithImpl<$Res>;
  @override
  $Res call({List<JokeModel> jokes, Option<FailureModel> failureOption});
}

/// @nodoc
class __$JokeFavoriteStateCopyWithImpl<$Res>
    extends _$JokeFavoriteStateCopyWithImpl<$Res>
    implements _$JokeFavoriteStateCopyWith<$Res> {
  __$JokeFavoriteStateCopyWithImpl(
      _JokeFavoriteState _value, $Res Function(_JokeFavoriteState) _then)
      : super(_value, (v) => _then(v as _JokeFavoriteState));

  @override
  _JokeFavoriteState get _value => super._value as _JokeFavoriteState;

  @override
  $Res call({
    Object? jokes = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_JokeFavoriteState(
      jokes: jokes == freezed
          ? _value.jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<JokeModel>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc

class _$_JokeFavoriteState extends _JokeFavoriteState {
  const _$_JokeFavoriteState({required this.jokes, required this.failureOption})
      : super._();

  @override
  final List<JokeModel> jokes;
  @override
  final Option<FailureModel> failureOption;

  @override
  String toString() {
    return 'JokeFavoriteState(jokes: $jokes, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JokeFavoriteState &&
            const DeepCollectionEquality().equals(other.jokes, jokes) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jokes),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$JokeFavoriteStateCopyWith<_JokeFavoriteState> get copyWith =>
      __$JokeFavoriteStateCopyWithImpl<_JokeFavoriteState>(this, _$identity);
}

abstract class _JokeFavoriteState extends JokeFavoriteState {
  const factory _JokeFavoriteState(
      {required List<JokeModel> jokes,
      required Option<FailureModel> failureOption}) = _$_JokeFavoriteState;
  const _JokeFavoriteState._() : super._();

  @override
  List<JokeModel> get jokes;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$JokeFavoriteStateCopyWith<_JokeFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
