// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) random,
    required TResult Function() favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? random,
    TResult? Function()? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? random,
    TResult Function()? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Random value) random,
    required TResult Function(_Favorite value) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Random value)? random,
    TResult? Function(_Favorite value)? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeStateCopyWith<$Res> {
  factory $JokeStateCopyWith(JokeState value, $Res Function(JokeState) then) =
      _$JokeStateCopyWithImpl<$Res, JokeState>;
}

/// @nodoc
class _$JokeStateCopyWithImpl<$Res, $Val extends JokeState>
    implements $JokeStateCopyWith<$Res> {
  _$JokeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RandomCopyWith<$Res> {
  factory _$$_RandomCopyWith(_$_Random value, $Res Function(_$_Random) then) =
      __$$_RandomCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category});
}

/// @nodoc
class __$$_RandomCopyWithImpl<$Res>
    extends _$JokeStateCopyWithImpl<$Res, _$_Random>
    implements _$$_RandomCopyWith<$Res> {
  __$$_RandomCopyWithImpl(_$_Random _value, $Res Function(_$_Random) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_Random(
      freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Random implements _Random {
  const _$_Random([this.category]);

  @override
  final String? category;

  @override
  String toString() {
    return 'JokeState.random(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Random &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomCopyWith<_$_Random> get copyWith =>
      __$$_RandomCopyWithImpl<_$_Random>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) random,
    required TResult Function() favorite,
  }) {
    return random(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? random,
    TResult? Function()? favorite,
  }) {
    return random?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? random,
    TResult Function()? favorite,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Random value) random,
    required TResult Function(_Favorite value) favorite,
  }) {
    return random(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Random value)? random,
    TResult? Function(_Favorite value)? favorite,
  }) {
    return random?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random(this);
    }
    return orElse();
  }
}

abstract class _Random implements JokeState {
  const factory _Random([final String? category]) = _$_Random;

  String? get category;
  @JsonKey(ignore: true)
  _$$_RandomCopyWith<_$_Random> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoriteCopyWith<$Res> {
  factory _$$_FavoriteCopyWith(
          _$_Favorite value, $Res Function(_$_Favorite) then) =
      __$$_FavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteCopyWithImpl<$Res>
    extends _$JokeStateCopyWithImpl<$Res, _$_Favorite>
    implements _$$_FavoriteCopyWith<$Res> {
  __$$_FavoriteCopyWithImpl(
      _$_Favorite _value, $Res Function(_$_Favorite) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Favorite implements _Favorite {
  const _$_Favorite();

  @override
  String toString() {
    return 'JokeState.favorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Favorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? category) random,
    required TResult Function() favorite,
  }) {
    return favorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category)? random,
    TResult? Function()? favorite,
  }) {
    return favorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category)? random,
    TResult Function()? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Random value) random,
    required TResult Function(_Favorite value) favorite,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Random value)? random,
    TResult? Function(_Favorite value)? favorite,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite implements JokeState {
  const factory _Favorite() = _$_Favorite;
}
