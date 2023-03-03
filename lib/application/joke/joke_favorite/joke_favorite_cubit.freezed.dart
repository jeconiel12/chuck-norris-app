// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeFavoriteState {
  List<Joke> get jokes => throw _privateConstructorUsedError;
  Option<Failure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeFavoriteStateCopyWith<JokeFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeFavoriteStateCopyWith<$Res> {
  factory $JokeFavoriteStateCopyWith(
          JokeFavoriteState value, $Res Function(JokeFavoriteState) then) =
      _$JokeFavoriteStateCopyWithImpl<$Res, JokeFavoriteState>;
  @useResult
  $Res call({List<Joke> jokes, Option<Failure> failureOption});
}

/// @nodoc
class _$JokeFavoriteStateCopyWithImpl<$Res, $Val extends JokeFavoriteState>
    implements $JokeFavoriteStateCopyWith<$Res> {
  _$JokeFavoriteStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_JokeFavoriteStateCopyWith<$Res>
    implements $JokeFavoriteStateCopyWith<$Res> {
  factory _$$_JokeFavoriteStateCopyWith(_$_JokeFavoriteState value,
          $Res Function(_$_JokeFavoriteState) then) =
      __$$_JokeFavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Joke> jokes, Option<Failure> failureOption});
}

/// @nodoc
class __$$_JokeFavoriteStateCopyWithImpl<$Res>
    extends _$JokeFavoriteStateCopyWithImpl<$Res, _$_JokeFavoriteState>
    implements _$$_JokeFavoriteStateCopyWith<$Res> {
  __$$_JokeFavoriteStateCopyWithImpl(
      _$_JokeFavoriteState _value, $Res Function(_$_JokeFavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jokes = null,
    Object? failureOption = null,
  }) {
    return _then(_$_JokeFavoriteState(
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

class _$_JokeFavoriteState extends _JokeFavoriteState {
  const _$_JokeFavoriteState(
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
    return 'JokeFavoriteState(jokes: $jokes, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeFavoriteState &&
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
  _$$_JokeFavoriteStateCopyWith<_$_JokeFavoriteState> get copyWith =>
      __$$_JokeFavoriteStateCopyWithImpl<_$_JokeFavoriteState>(
          this, _$identity);
}

abstract class _JokeFavoriteState extends JokeFavoriteState {
  const factory _JokeFavoriteState(
      {required final List<Joke> jokes,
      required final Option<Failure> failureOption}) = _$_JokeFavoriteState;
  const _JokeFavoriteState._() : super._();

  @override
  List<Joke> get jokes;
  @override
  Option<Failure> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$$_JokeFavoriteStateCopyWith<_$_JokeFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
