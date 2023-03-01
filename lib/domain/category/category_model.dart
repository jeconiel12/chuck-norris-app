import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required String value,
  }) = _CategoryModel;

  const CategoryModel._();

  factory CategoryModel.empty() {
    return CategoryModel(value: '');
  }
}
