import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  factory CategoryDto({
    required String value,
  }) = _CategoryDto;

  factory CategoryDto.fromString(String value) {
    return CategoryDto(value: value);
  }

  CategoryModel get fromDto {
    return CategoryModel(value: value);
  }
}
