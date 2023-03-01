// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeDto {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeDtoCopyWith<JokeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeDtoCopyWith<$Res> {
  factory $JokeDtoCopyWith(JokeDto value, $Res Function(JokeDto) then) =
      _$JokeDtoCopyWithImpl<$Res, JokeDto>;
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class _$JokeDtoCopyWithImpl<$Res, $Val extends JokeDto>
    implements $JokeDtoCopyWith<$Res> {
  _$JokeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JokeDtoCopyWith<$Res> implements $JokeDtoCopyWith<$Res> {
  factory _$$_JokeDtoCopyWith(
          _$_JokeDto value, $Res Function(_$_JokeDto) then) =
      __$$_JokeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class __$$_JokeDtoCopyWithImpl<$Res>
    extends _$JokeDtoCopyWithImpl<$Res, _$_JokeDto>
    implements _$$_JokeDtoCopyWith<$Res> {
  __$$_JokeDtoCopyWithImpl(_$_JokeDto _value, $Res Function(_$_JokeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$_JokeDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JokeDto extends _JokeDto {
  _$_JokeDto({required this.id, required this.value}) : super._();

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'JokeDto(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeDtoCopyWith<_$_JokeDto> get copyWith =>
      __$$_JokeDtoCopyWithImpl<_$_JokeDto>(this, _$identity);
}

abstract class _JokeDto extends JokeDto {
  factory _JokeDto({required final String id, required final String value}) =
      _$_JokeDto;
  _JokeDto._() : super._();

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_JokeDtoCopyWith<_$_JokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
