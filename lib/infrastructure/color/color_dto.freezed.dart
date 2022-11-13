// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'color_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ColorDtoTearOff {
  const _$ColorDtoTearOff();

  _ColorDto call({required String code}) {
    return _ColorDto(
      code: code,
    );
  }
}

/// @nodoc
const $ColorDto = _$ColorDtoTearOff();

/// @nodoc
mixin _$ColorDto {
  String get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorDtoCopyWith<ColorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorDtoCopyWith<$Res> {
  factory $ColorDtoCopyWith(ColorDto value, $Res Function(ColorDto) then) =
      _$ColorDtoCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$ColorDtoCopyWithImpl<$Res> implements $ColorDtoCopyWith<$Res> {
  _$ColorDtoCopyWithImpl(this._value, this._then);

  final ColorDto _value;
  // ignore: unused_field
  final $Res Function(ColorDto) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ColorDtoCopyWith<$Res> implements $ColorDtoCopyWith<$Res> {
  factory _$ColorDtoCopyWith(_ColorDto value, $Res Function(_ColorDto) then) =
      __$ColorDtoCopyWithImpl<$Res>;
  @override
  $Res call({String code});
}

/// @nodoc
class __$ColorDtoCopyWithImpl<$Res> extends _$ColorDtoCopyWithImpl<$Res>
    implements _$ColorDtoCopyWith<$Res> {
  __$ColorDtoCopyWithImpl(_ColorDto _value, $Res Function(_ColorDto) _then)
      : super(_value, (v) => _then(v as _ColorDto));

  @override
  _ColorDto get _value => super._value as _ColorDto;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_ColorDto(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ColorDto extends _ColorDto {
  _$_ColorDto({required this.code}) : super._();

  @override
  final String code;

  @override
  String toString() {
    return 'ColorDto(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorDto &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$ColorDtoCopyWith<_ColorDto> get copyWith =>
      __$ColorDtoCopyWithImpl<_ColorDto>(this, _$identity);
}

abstract class _ColorDto extends ColorDto {
  factory _ColorDto({required String code}) = _$_ColorDto;
  _ColorDto._() : super._();

  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$ColorDtoCopyWith<_ColorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
