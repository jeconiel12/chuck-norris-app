// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _FavoriteState call({required bool isJokeFavorite, required bool isError}) {
    return _FavoriteState(
      isJokeFavorite: isJokeFavorite,
      isError: isError,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  bool get isJokeFavorite => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
  $Res call({bool isJokeFavorite, bool isError});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;

  @override
  $Res call({
    Object? isJokeFavorite = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      isJokeFavorite: isJokeFavorite == freezed
          ? _value.isJokeFavorite
          : isJokeFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$FavoriteStateCopyWith(
          _FavoriteState value, $Res Function(_FavoriteState) then) =
      __$FavoriteStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isJokeFavorite, bool isError});
}

/// @nodoc
class __$FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateCopyWith<$Res> {
  __$FavoriteStateCopyWithImpl(
      _FavoriteState _value, $Res Function(_FavoriteState) _then)
      : super(_value, (v) => _then(v as _FavoriteState));

  @override
  _FavoriteState get _value => super._value as _FavoriteState;

  @override
  $Res call({
    Object? isJokeFavorite = freezed,
    Object? isError = freezed,
  }) {
    return _then(_FavoriteState(
      isJokeFavorite: isJokeFavorite == freezed
          ? _value.isJokeFavorite
          : isJokeFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FavoriteState extends _FavoriteState with DiagnosticableTreeMixin {
  const _$_FavoriteState({required this.isJokeFavorite, required this.isError})
      : super._();

  @override
  final bool isJokeFavorite;
  @override
  final bool isError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteState(isJokeFavorite: $isJokeFavorite, isError: $isError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteState'))
      ..add(DiagnosticsProperty('isJokeFavorite', isJokeFavorite))
      ..add(DiagnosticsProperty('isError', isError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteState &&
            const DeepCollectionEquality()
                .equals(other.isJokeFavorite, isJokeFavorite) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isJokeFavorite),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith =>
      __$FavoriteStateCopyWithImpl<_FavoriteState>(this, _$identity);
}

abstract class _FavoriteState extends FavoriteState {
  const factory _FavoriteState(
      {required bool isJokeFavorite, required bool isError}) = _$_FavoriteState;
  const _FavoriteState._() : super._();

  @override
  bool get isJokeFavorite;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
