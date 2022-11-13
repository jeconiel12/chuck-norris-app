import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  factory CategoryModel({
    required String value,
  }) = _CategoryModel;

  factory CategoryModel.empty() {
    return CategoryModel(value: '');
  }
}
