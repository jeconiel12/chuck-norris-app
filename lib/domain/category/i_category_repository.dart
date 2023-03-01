import 'package:dartz/dartz.dart';

import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/domain/core/failure_model.dart';

// ignore: one_member_abstracts
abstract class ICategoryRepository {
  Future<Either<FailureModel, List<CategoryModel>>> getCategories();
}
