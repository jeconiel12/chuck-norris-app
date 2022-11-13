import 'dart:io';

import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/domain/category/i_category_repository.dart';
import 'package:chuck_norris_joke/infrastructure/category/category_api.dart';
import 'package:dartz/dartz.dart';
import 'package:chuck_norris_joke/domain/core/failure_model.dart';

class CategoryRepository implements ICategoryRepository {
  final CategoryApi categoryApi;

  CategoryRepository({
    required this.categoryApi,
  });

  @override
  Future<Either<FailureModel, List<CategoryModel>>> getCategories() async {
    try {
      final categories = await categoryApi.getCategories();
      return right(categories);
    } on SocketException {
      return const Left(FailureModel.network());
    } on Exception {
      return const Left(FailureModel.api());
    }
  }
}
