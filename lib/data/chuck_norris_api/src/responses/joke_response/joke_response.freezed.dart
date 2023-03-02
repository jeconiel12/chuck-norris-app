// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeResponse _$JokeResponseFromJson(Map<String, dynamic> json) {
  return _JokeResponse.fromJson(json);
}

/// @nodoc
mixin _$JokeResponse {
  Joke get joke => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeResponseCopyWith<JokeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeResponseCopyWith<$Res> {
  factory $JokeResponseCopyWith(
          JokeResponse value, $Res Function(JokeResponse) then) =
      _$JokeResponseCopyWithImpl<$Res, JokeResponse>;
  @useResult
  $Res call({Joke joke});

  $JokeCopyWith<$Res> get joke;
}

/// @nodoc
class _$JokeResponseCopyWithImpl<$Res, $Val extends JokeResponse>
    implements $JokeResponseCopyWith<$Res> {
  _$JokeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
  }) {
    return _then(_value.copyWith(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke,
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
abstract class _$$_JokeResponseCopyWith<$Res>
    implements $JokeResponseCopyWith<$Res> {
  factory _$$_JokeResponseCopyWith(
          _$_JokeResponse value, $Res Function(_$_JokeResponse) then) =
      __$$_JokeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Joke joke});

  @override
  $JokeCopyWith<$Res> get joke;
}

/// @nodoc
class __$$_JokeResponseCopyWithImpl<$Res>
    extends _$JokeResponseCopyWithImpl<$Res, _$_JokeResponse>
    implements _$$_JokeResponseCopyWith<$Res> {
  __$$_JokeResponseCopyWithImpl(
      _$_JokeResponse _value, $Res Function(_$_JokeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = null,
  }) {
    return _then(_$_JokeResponse(
      joke: null == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeResponse implements _JokeResponse {
  _$_JokeResponse({required this.joke});

  factory _$_JokeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JokeResponseFromJson(json);

  @override
  final Joke joke;

  @override
  String toString() {
    return 'JokeResponse(joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeResponse &&
            (identical(other.joke, joke) || other.joke == joke));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, joke);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeResponseCopyWith<_$_JokeResponse> get copyWith =>
      __$$_JokeResponseCopyWithImpl<_$_JokeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeResponseToJson(
      this,
    );
  }
}

abstract class _JokeResponse implements JokeResponse {
  factory _JokeResponse({required final Joke joke}) = _$_JokeResponse;

  factory _JokeResponse.fromJson(Map<String, dynamic> json) =
      _$_JokeResponse.fromJson;

  @override
  Joke get joke;
  @override
  @JsonKey(ignore: true)
  _$$_JokeResponseCopyWith<_$_JokeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
