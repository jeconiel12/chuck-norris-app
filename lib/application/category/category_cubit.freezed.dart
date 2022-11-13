// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _CategoryState call(
      {required List<CategoryModel> categories,
      required bool isLoading,
      required Option<FailureModel> failureOption}) {
    return _CategoryState(
      categories: categories,
      isLoading: isLoading,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FailureModel> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> categories,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(
          _CategoryState value, $Res Function(_CategoryState) then) =
      __$CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> categories,
      bool isLoading,
      Option<FailureModel> failureOption});
}

/// @nodoc
class __$CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(
      _CategoryState _value, $Res Function(_CategoryState) _then)
      : super(_value, (v) => _then(v as _CategoryState));

  @override
  _CategoryState get _value => super._value as _CategoryState;

  @override
  $Res call({
    Object? categories = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_CategoryState(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FailureModel>,
    ));
  }
}

/// @nodoc

class _$_CategoryState extends _CategoryState {
  const _$_CategoryState(
      {required this.categories,
      required this.isLoading,
      required this.failureOption})
      : super._();

  @override
  final List<CategoryModel> categories;
  @override
  final bool isLoading;
  @override
  final Option<FailureModel> failureOption;

  @override
  String toString() {
    return 'CategoryState(categories: $categories, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryState &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);
}

abstract class _CategoryState extends CategoryState {
  const factory _CategoryState(
      {required List<CategoryModel> categories,
      required bool isLoading,
      required Option<FailureModel> failureOption}) = _$_CategoryState;
  const _CategoryState._() : super._();

  @override
  List<CategoryModel> get categories;
  @override
  bool get isLoading;
  @override
  Option<FailureModel> get failureOption;
  @override
  @JsonKey(ignore: true)
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
