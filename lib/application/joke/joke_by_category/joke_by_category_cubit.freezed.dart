// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_by_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeByCategoryState {
  Joke get joke => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Failure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeByCategoryStateCopyWith<JokeByCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeByCategoryStateCopyWith<$Res> {
  factory $JokeByCategoryStateCopyWith(
          JokeByCategoryState value, $Res Function(JokeByCategoryState) then) =
      _$JokeByCategoryStateCopyWithImpl<$Res, JokeByCategoryState>;
  @useResult
  $Res call({Joke joke, bool isLoading, Option<Failure> failureOption});

  $JokeCopyWith<$Res> get joke;
}

/// @nodoc
class _$JokeByCategoryStateCopyWithImpl<$Res, $Val extends JokeByCategoryState>
    implements $JokeByCategoryStateCopyWith<$Res> {
  _$JokeByCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
    Object? isLoading = null,
    Object? failureOption = null,
  }) {
    return _then(_value.copyWith(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
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
abstract class _$$_JokeByCategoryStateCopyWith<$Res>
    implements $JokeByCategoryStateCopyWith<$Res> {
  factory _$$_JokeByCategoryStateCopyWith(_$_JokeByCategoryState value,
          $Res Function(_$_JokeByCategoryState) then) =
      __$$_JokeByCategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Joke joke, bool isLoading, Option<Failure> failureOption});

  @override
  $JokeCopyWith<$Res> get joke;
}

/// @nodoc
class __$$_JokeByCategoryStateCopyWithImpl<$Res>
    extends _$JokeByCategoryStateCopyWithImpl<$Res, _$_JokeByCategoryState>
    implements _$$_JokeByCategoryStateCopyWith<$Res> {
  __$$_JokeByCategoryStateCopyWithImpl(_$_JokeByCategoryState _value,
      $Res Function(_$_JokeByCategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
    Object? isLoading = null,
    Object? failureOption = null,
  }) {
    return _then(_$_JokeByCategoryState(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
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
  final Joke joke;
  @override
  final bool isLoading;
  @override
  final Option<Failure> failureOption;

  @override
  String toString() {
    return 'JokeByCategoryState(joke: $joke, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeByCategoryState &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joke, isLoading, failureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeByCategoryStateCopyWith<_$_JokeByCategoryState> get copyWith =>
      __$$_JokeByCategoryStateCopyWithImpl<_$_JokeByCategoryState>(
          this, _$identity);
}

abstract class _JokeByCategoryState extends JokeByCategoryState {
  const factory _JokeByCategoryState(
      {required final Joke joke,
      required final bool isLoading,
      required final Option<Failure> failureOption}) = _$_JokeByCategoryState;
  const _JokeByCategoryState._() : super._();

  @override
  Joke get joke;
  @override
  bool get isLoading;
  @override
  Option<Failure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$$_JokeByCategoryStateCopyWith<_$_JokeByCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
