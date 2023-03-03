import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/domain/category/i_category_repository.dart';
import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/infrastructure/category/category_api.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  CategoryRepository({
    required this.categoryApi,
  });

  final CategoryApi categoryApi;

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
