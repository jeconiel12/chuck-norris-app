// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_joke_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomJokeState {
  Joke get joke => throw _privateConstructorUsedError;
  Option<Failure> get failureOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomJokeStateCopyWith<RandomJokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomJokeStateCopyWith<$Res> {
  factory $RandomJokeStateCopyWith(
          RandomJokeState value, $Res Function(RandomJokeState) then) =
      _$RandomJokeStateCopyWithImpl<$Res, RandomJokeState>;
  @useResult
  $Res call({Joke joke, Option<Failure> failureOption, bool isLoading});

  $JokeCopyWith<$Res> get joke;
}

/// @nodoc
class _$RandomJokeStateCopyWithImpl<$Res, $Val extends RandomJokeState>
    implements $RandomJokeStateCopyWith<$Res> {
  _$RandomJokeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
    Object? failureOption = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JokeCopyWith<$Res> get joke {
    return $JokeCopyWith<$Res>(_value.joke, (value) {
      return _then(_value.copyWith(joke: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RandomJokeStateCopyWith<$Res>
    implements $RandomJokeStateCopyWith<$Res> {
  factory _$$_RandomJokeStateCopyWith(
          _$_RandomJokeState value, $Res Function(_$_RandomJokeState) then) =
      __$$_RandomJokeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Joke joke, Option<Failure> failureOption, bool isLoading});

  @override
  $JokeCopyWith<$Res> get joke;
}

/// @nodoc
class __$$_RandomJokeStateCopyWithImpl<$Res>
    extends _$RandomJokeStateCopyWithImpl<$Res, _$_RandomJokeState>
    implements _$$_RandomJokeStateCopyWith<$Res> {
  __$$_RandomJokeStateCopyWithImpl(
      _$_RandomJokeState _value, $Res Function(_$_RandomJokeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
    Object? failureOption = null,
    Object? isLoading = null,
  }) {
    return _then(_$_RandomJokeState(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RandomJokeState extends _RandomJokeState {
  const _$_RandomJokeState(
      {required this.joke,
      required this.failureOption,
      required this.isLoading})
      : super._();

  @override
  final Joke joke;
  @override
  final Option<Failure> failureOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RandomJokeState(joke: $joke, failureOption: $failureOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomJokeState &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joke, failureOption, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomJokeStateCopyWith<_$_RandomJokeState> get copyWith =>
      __$$_RandomJokeStateCopyWithImpl<_$_RandomJokeState>(this, _$identity);
}

abstract class _RandomJokeState extends RandomJokeState {
  const factory _RandomJokeState(
      {required final Joke joke,
      required final Option<Failure> failureOption,
      required final bool isLoading}) = _$_RandomJokeState;
  const _RandomJokeState._() : super._();

  @override
  Joke get joke;
  @override
  Option<Failure> get failureOption;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_RandomJokeStateCopyWith<_$_RandomJokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
