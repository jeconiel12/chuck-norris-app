part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<CategoryModel> categories,
    required bool isLoading,
    required Option<FailureModel> failureOption,
  }) = _CategoryState;

  const CategoryState._();

  factory CategoryState.initial() {
    return CategoryState(
      categories: [],
      isLoading: false,
      failureOption: none(),
    );
  }
}
