// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JokeModelTearOff {
  const _$JokeModelTearOff();

  _JokeModel call({required String id, required String value}) {
    return _JokeModel(
      id: id,
      value: value,
    );
  }
}

/// @nodoc
const $JokeModel = _$JokeModelTearOff();

/// @nodoc
mixin _$JokeModel {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeModelCopyWith<JokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeModelCopyWith<$Res> {
  factory $JokeModelCopyWith(JokeModel value, $Res Function(JokeModel) then) =
      _$JokeModelCopyWithImpl<$Res>;
  $Res call({String id, String value});
}

/// @nodoc
class _$JokeModelCopyWithImpl<$Res> implements $JokeModelCopyWith<$Res> {
  _$JokeModelCopyWithImpl(this._value, this._then);

  final JokeModel _value;
  // ignore: unused_field
  final $Res Function(JokeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$JokeModelCopyWith<$Res> implements $JokeModelCopyWith<$Res> {
  factory _$JokeModelCopyWith(
          _JokeModel value, $Res Function(_JokeModel) then) =
      __$JokeModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String value});
}

/// @nodoc
class __$JokeModelCopyWithImpl<$Res> extends _$JokeModelCopyWithImpl<$Res>
    implements _$JokeModelCopyWith<$Res> {
  __$JokeModelCopyWithImpl(_JokeModel _value, $Res Function(_JokeModel) _then)
      : super(_value, (v) => _then(v as _JokeModel));

  @override
  _JokeModel get _value => super._value as _JokeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_JokeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JokeModel extends _JokeModel {
  const _$_JokeModel({required this.id, required this.value}) : super._();

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'JokeModel(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JokeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$JokeModelCopyWith<_JokeModel> get copyWith =>
      __$JokeModelCopyWithImpl<_JokeModel>(this, _$identity);
}

abstract class _JokeModel extends JokeModel {
  const factory _JokeModel({required String id, required String value}) =
      _$_JokeModel;
  const _JokeModel._() : super._();

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$JokeModelCopyWith<_JokeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
