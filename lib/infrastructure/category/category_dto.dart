import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/domain/category/category_model.dart';

part 'category_dto.freezed.dart';

@freezed
class CategoryDto with _$CategoryDto {
  factory CategoryDto({
    required String value,
  }) = _CategoryDto;

  const CategoryDto._();

  factory CategoryDto.fromString(String value) {
    return CategoryDto(value: value);
  }

  CategoryModel get fromDto {
    return CategoryModel(value: value);
  }
}
