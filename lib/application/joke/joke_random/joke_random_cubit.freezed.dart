// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_random_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$JokeRandomStateCopyWithImpl<$Res, JokeRandomState>;
  @useResult
  $Res call(
      {JokeModel joke, Option<FailureModel> failureOption, bool isLoading});

  $JokeModelCopyWith<$Res> get joke;
}

/// @nodoc
class _$JokeRandomStateCopyWithImpl<$Res, $Val extends JokeRandomState>
    implements $JokeRandomStateCopyWith<$Res> {
  _$JokeRandomStateCopyWithImpl(this._value, this._then);

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
              as JokeModel,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JokeModelCopyWith<$Res> get joke {
    return $JokeModelCopyWith<$Res>(_value.joke, (value) {
      return _then(_value.copyWith(joke: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JokeRandomStateCopyWith<$Res>
    implements $JokeRandomStateCopyWith<$Res> {
  factory _$$_JokeRandomStateCopyWith(
          _$_JokeRandomState value, $Res Function(_$_JokeRandomState) then) =
      __$$_JokeRandomStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {JokeModel joke, Option<FailureModel> failureOption, bool isLoading});

  @override
  $JokeModelCopyWith<$Res> get joke;
}

/// @nodoc
class __$$_JokeRandomStateCopyWithImpl<$Res>
    extends _$JokeRandomStateCopyWithImpl<$Res, _$_JokeRandomState>
    implements _$$_JokeRandomStateCopyWith<$Res> {
  __$$_JokeRandomStateCopyWithImpl(
      _$_JokeRandomState _value, $Res Function(_$_JokeRandomState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
    Object? failureOption = null,
    Object? isLoading = null,
  }) {
    return _then(_$_JokeRandomState(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as JokeModel,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
      isLoading: null == isLoading
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
            other is _$_JokeRandomState &&
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
  _$$_JokeRandomStateCopyWith<_$_JokeRandomState> get copyWith =>
      __$$_JokeRandomStateCopyWithImpl<_$_JokeRandomState>(this, _$identity);
}

abstract class _JokeRandomState extends JokeRandomState {
  const factory _JokeRandomState(
      {required final JokeModel joke,
      required final Option<FailureModel> failureOption,
      required final bool isLoading}) = _$_JokeRandomState;
  const _JokeRandomState._() : super._();

  @override
  JokeModel get joke;
  @override
  Option<FailureModel> get failureOption;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_JokeRandomStateCopyWith<_$_JokeRandomState> get copyWith =>
      throw _privateConstructorUsedError;
}
