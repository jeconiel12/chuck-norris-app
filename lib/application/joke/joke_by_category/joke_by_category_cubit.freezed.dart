// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_by_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JokeByCategoryStateTearOff {
  const _$JokeByCategoryStateTearOff();

  _JokeByCategoryState call(
      {required JokeModel joke,
      required bool isLoading,
      required Option<FailureModel> failureOption}) {
    return _JokeByCategoryState(
      joke: joke,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $JokeByCategoryState = _$JokeByCategoryStateTearOff();

/// @nodoc
mixin _$JokeByCategoryState {
  JokeModel get joke => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeByCategoryStateCopyWith<JokeByCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeByCategoryStateCopyWith<$Res> {
  factory $JokeByCategoryStateCopyWith(
          JokeByCategoryState value, $Res Function(JokeByCategoryState) then) =
      _$JokeByCategoryStateCopyWithImpl<$Res>;
  $Res call(
      {JokeModel joke, bool isLoading, Option<FailureModel> failureOption});

  $JokeModelCopyWith<$Res> get joke;
}

/// @nodoc
class _$JokeByCategoryStateCopyWithImpl<$Res>
    implements $JokeByCategoryStateCopyWith<$Res> {
  _$JokeByCategoryStateCopyWithImpl(this._value, this._then);

  final JokeByCategoryState _value;
  // ignore: unused_field
  final $Res Function(JokeByCategoryState) _then;

  @override
  $Res call({
    Object? joke = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
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
abstract class _$JokeByCategoryStateCopyWith<$Res>
    implements $JokeByCategoryStateCopyWith<$Res> {
  factory _$JokeByCategoryStateCopyWith(_JokeByCategoryState value,
          $Res Function(_JokeByCategoryState) then) =
      __$JokeByCategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {JokeModel joke, bool isLoading, Option<FailureModel> failureOption});

  @override
  $JokeModelCopyWith<$Res> get joke;
}

/// @nodoc
class __$JokeByCategoryStateCopyWithImpl<$Res>
    extends _$JokeByCategoryStateCopyWithImpl<$Res>
    implements _$JokeByCategoryStateCopyWith<$Res> {
  __$JokeByCategoryStateCopyWithImpl(
      _JokeByCategoryState _value, $Res Function(_JokeByCategoryState) _then)
      : super(_value, (v) => _then(v as _JokeByCategoryState));

  @override
  _JokeByCategoryState get _value => super._value as _JokeByCategoryState;

  @override
  $Res call({
    Object? joke = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_JokeByCategoryState(
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc

class _$_JokeByCategoryState extends _JokeByCategoryState {
  const _$_JokeByCategoryState(
      {required this.joke,
      required this.isLoading,
      required this.failureOption})
      : super._();

  @override
  final JokeModel joke;
  @override
  final bool isLoading;
  @override
  final Option<FailureModel> failureOption;

  @override
  String toString() {
    return 'JokeByCategoryState(joke: $joke, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JokeByCategoryState &&
            const DeepCollectionEquality().equals(other.joke, joke) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(joke),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$JokeByCategoryStateCopyWith<_JokeByCategoryState> get copyWith =>
      __$JokeByCategoryStateCopyWithImpl<_JokeByCategoryState>(
          this, _$identity);
}

abstract class _JokeByCategoryState extends JokeByCategoryState {
  const factory _JokeByCategoryState(
      {required JokeModel joke,
      required bool isLoading,
      required Option<FailureModel> failureOption}) = _$_JokeByCategoryState;
  const _JokeByCategoryState._() : super._();

  @override
  JokeModel get joke;
  @override
  bool get isLoading;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$JokeByCategoryStateCopyWith<_JokeByCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
