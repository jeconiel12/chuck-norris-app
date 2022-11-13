// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JokeStateTearOff {
  const _$JokeStateTearOff();

  _Random random() {
    return const _Random();
  }

  _Category category({required CategoryModel category}) {
    return _Category(
      category: category,
    );
  }

  _Favorite favorite() {
    return const _Favorite();
  }
}

/// @nodoc
const $JokeState = _$JokeStateTearOff();

/// @nodoc
mixin _$JokeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(CategoryModel category) category,
    required TResult Function() favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Random value) random,
    required TResult Function(_Category value) category,
    required TResult Function(_Favorite value) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeStateCopyWith<$Res> {
  factory $JokeStateCopyWith(JokeState value, $Res Function(JokeState) then) =
      _$JokeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JokeStateCopyWithImpl<$Res> implements $JokeStateCopyWith<$Res> {
  _$JokeStateCopyWithImpl(this._value, this._then);

  final JokeState _value;
  // ignore: unused_field
  final $Res Function(JokeState) _then;
}

/// @nodoc
abstract class _$RandomCopyWith<$Res> {
  factory _$RandomCopyWith(_Random value, $Res Function(_Random) then) =
      __$RandomCopyWithImpl<$Res>;
}

/// @nodoc
class __$RandomCopyWithImpl<$Res> extends _$JokeStateCopyWithImpl<$Res>
    implements _$RandomCopyWith<$Res> {
  __$RandomCopyWithImpl(_Random _value, $Res Function(_Random) _then)
      : super(_value, (v) => _then(v as _Random));

  @override
  _Random get _value => super._value as _Random;
}

/// @nodoc

class _$_Random extends _Random {
  const _$_Random() : super._();

  @override
  String toString() {
    return 'JokeState.random()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Random);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(CategoryModel category) category,
    required TResult Function() favorite,
  }) {
    return random();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
  }) {
    return random?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Random value) random,
    required TResult Function(_Category value) category,
    required TResult Function(_Favorite value) favorite,
  }) {
    return random(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
  }) {
    return random?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (random != null) {
      return random(this);
    }
    return orElse();
  }
}

abstract class _Random extends JokeState {
  const factory _Random() = _$_Random;
  const _Random._() : super._();
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  $Res call({CategoryModel category});

  $CategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$JokeStateCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_Category(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }

  @override
  $CategoryModelCopyWith<$Res> get category {
    return $CategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$_Category extends _Category {
  const _$_Category({required this.category}) : super._();

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'JokeState.category(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(CategoryModel category) category,
    required TResult Function() favorite,
  }) {
    return category(this.category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
  }) {
    return category?.call(this.category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(this.category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Random value) random,
    required TResult Function(_Category value) category,
    required TResult Function(_Favorite value) favorite,
  }) {
    return category(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
  }) {
    return category?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(this);
    }
    return orElse();
  }
}

abstract class _Category extends JokeState {
  const factory _Category({required CategoryModel category}) = _$_Category;
  const _Category._() : super._();

  CategoryModel get category;
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) then) =
      __$FavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavoriteCopyWithImpl<$Res> extends _$JokeStateCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(_Favorite _value, $Res Function(_Favorite) _then)
      : super(_value, (v) => _then(v as _Favorite));

  @override
  _Favorite get _value => super._value as _Favorite;
}

/// @nodoc

class _$_Favorite extends _Favorite {
  const _$_Favorite() : super._();

  @override
  String toString() {
    return 'JokeState.favorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Favorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() random,
    required TResult Function(CategoryModel category) category,
    required TResult Function() favorite,
  }) {
    return favorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
    TResult Function()? favorite,
  }) {
    return favorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? random,
    TResult Function(CategoryModel category)? category,
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
    required TResult Function(_Category value) category,
    required TResult Function(_Favorite value) favorite,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Random value)? random,
    TResult Function(_Category value)? category,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite extends JokeState {
  const factory _Favorite() = _$_Favorite;
  const _Favorite._() : super._();
}
