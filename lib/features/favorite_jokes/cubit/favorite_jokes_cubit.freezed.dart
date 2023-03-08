// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_jokes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteJokesState {
  List<Joke> get jokes => throw _privateConstructorUsedError;
  Option<Failure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteJokesStateCopyWith<FavoriteJokesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteJokesStateCopyWith<$Res> {
  factory $FavoriteJokesStateCopyWith(
          FavoriteJokesState value, $Res Function(FavoriteJokesState) then) =
      _$FavoriteJokesStateCopyWithImpl<$Res, FavoriteJokesState>;
  @useResult
  $Res call({List<Joke> jokes, Option<Failure> failureOption});
}

/// @nodoc
class _$FavoriteJokesStateCopyWithImpl<$Res, $Val extends FavoriteJokesState>
    implements $FavoriteJokesStateCopyWith<$Res> {
  _$FavoriteJokesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokes = null,
    Object? failureOption = null,
  }) {
    return _then(_value.copyWith(
      jokes: null == jokes
          ? _value.jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteJokesStateCopyWith<$Res>
    implements $FavoriteJokesStateCopyWith<$Res> {
  factory _$$_FavoriteJokesStateCopyWith(_$_FavoriteJokesState value,
          $Res Function(_$_FavoriteJokesState) then) =
      __$$_FavoriteJokesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Joke> jokes, Option<Failure> failureOption});
}

/// @nodoc
class __$$_FavoriteJokesStateCopyWithImpl<$Res>
    extends _$FavoriteJokesStateCopyWithImpl<$Res, _$_FavoriteJokesState>
    implements _$$_FavoriteJokesStateCopyWith<$Res> {
  __$$_FavoriteJokesStateCopyWithImpl(
      _$_FavoriteJokesState _value, $Res Function(_$_FavoriteJokesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokes = null,
    Object? failureOption = null,
  }) {
    return _then(_$_FavoriteJokesState(
      jokes: null == jokes
          ? _value._jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$_FavoriteJokesState extends _FavoriteJokesState {
  const _$_FavoriteJokesState(
      {required final List<Joke> jokes, required this.failureOption})
      : _jokes = jokes,
        super._();

  final List<Joke> _jokes;
  @override
  List<Joke> get jokes {
    if (_jokes is EqualUnmodifiableListView) return _jokes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokes);
  }

  @override
  final Option<Failure> failureOption;

  @override
  String toString() {
    return 'FavoriteJokesState(jokes: $jokes, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteJokesState &&
            const DeepCollectionEquality().equals(other._jokes, _jokes) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_jokes), failureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteJokesStateCopyWith<_$_FavoriteJokesState> get copyWith =>
      __$$_FavoriteJokesStateCopyWithImpl<_$_FavoriteJokesState>(
          this, _$identity);
}

abstract class _FavoriteJokesState extends FavoriteJokesState {
  const factory _FavoriteJokesState(
      {required final List<Joke> jokes,
      required final Option<Failure> failureOption}) = _$_FavoriteJokesState;
  const _FavoriteJokesState._() : super._();

  @override
  List<Joke> get jokes;
  @override
  Option<Failure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteJokesStateCopyWith<_$_FavoriteJokesState> get copyWith =>
      throw _privateConstructorUsedError;
}
