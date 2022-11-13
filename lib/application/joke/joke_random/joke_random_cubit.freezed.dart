// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_random_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JokeRandomStateTearOff {
  const _$JokeRandomStateTearOff();

  _JokeRandomState call(
      {required JokeModel joke,
      required Option<FailureModel> failureOption,
      required bool isLoading}) {
    return _JokeRandomState(
      joke: joke,
      failureOption: failureOption,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $JokeRandomState = _$JokeRandomStateTearOff();

/// @nodoc
mixin _$JokeRandomState {
  JokeModel get joke => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeRandomStateCopyWith<JokeRandomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeRandomStateCopyWith<$Res> {
  factory $JokeRandomStateCopyWith(
          JokeRandomState value, $Res Function(JokeRandomState) then) =
      _$JokeRandomStateCopyWithImpl<$Res>;
  $Res call(
      {JokeModel joke, Option<FailureModel> failureOption, bool isLoading});

  $JokeModelCopyWith<$Res> get joke;
}

/// @nodoc
class _$JokeRandomStateCopyWithImpl<$Res>
    implements $JokeRandomStateCopyWith<$Res> {
  _$JokeRandomStateCopyWithImpl(this._value, this._then);

  final JokeRandomState _value;
  // ignore: unused_field
  final $Res Function(JokeRandomState) _then;

  @override
  $Res call({
    Object? joke = freezed,
    Object? failureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $JokeModelCopyWith<$Res> get joke {
    return $JokeModelCopyWith<$Res>(_value.joke, (value) {
      return _then(_value.copyWith(joke: value));
    });
  }
}

/// @nodoc
abstract class _$JokeRandomStateCopyWith<$Res>
    implements $JokeRandomStateCopyWith<$Res> {
  factory _$JokeRandomStateCopyWith(
          _JokeRandomState value, $Res Function(_JokeRandomState) then) =
      __$JokeRandomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {JokeModel joke, Option<FailureModel> failureOption, bool isLoading});

  @override
  $JokeModelCopyWith<$Res> get joke;
}

/// @nodoc
class __$JokeRandomStateCopyWithImpl<$Res>
    extends _$JokeRandomStateCopyWithImpl<$Res>
    implements _$JokeRandomStateCopyWith<$Res> {
  __$JokeRandomStateCopyWithImpl(
      _JokeRandomState _value, $Res Function(_JokeRandomState) _then)
      : super(_value, (v) => _then(v as _JokeRandomState));

  @override
  _JokeRandomState get _value => super._value as _JokeRandomState;

  @override
  $Res call({
    Object? joke = freezed,
    Object? failureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_JokeRandomState(
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_JokeRandomState extends _JokeRandomState {
  const _$_JokeRandomState(
      {required this.joke,
      required this.failureOption,
      required this.isLoading})
      : super._();

  @override
  final JokeModel joke;
  @override
  final Option<FailureModel> failureOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'JokeRandomState(joke: $joke, failureOption: $failureOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JokeRandomState &&
            const DeepCollectionEquality().equals(other.joke, joke) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(joke),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$JokeRandomStateCopyWith<_JokeRandomState> get copyWith =>
      __$JokeRandomStateCopyWithImpl<_JokeRandomState>(this, _$identity);
}

abstract class _JokeRandomState extends JokeRandomState {
  const factory _JokeRandomState(
      {required JokeModel joke,
      required Option<FailureModel> failureOption,
      required bool isLoading}) = _$_JokeRandomState;
  const _JokeRandomState._() : super._();

  @override
  JokeModel get joke;
  @override
  Option<FailureModel> get failureOption;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$JokeRandomStateCopyWith<_JokeRandomState> get copyWith =>
      throw _privateConstructorUsedError;
}
