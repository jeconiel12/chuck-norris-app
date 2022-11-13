import 'dart:convert';
import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/infrastructure/category/category_dto.dart';
import 'package:http/http.dart' as http;

class CategoryApi {
  static const String _baseUrl = 'https://api.chucknorris.io/jokes';

  const CategoryApi();

  Future<List<CategoryModel>> getCategories() async {
    final url = Uri.parse('$_baseUrl/categories');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final categories = (data as List)
          .map((category) => CategoryDto(value: category.toString()).fromDto)
          .toList();
      return categories;
    } else {
      throw Exception();
    }
  }
}
