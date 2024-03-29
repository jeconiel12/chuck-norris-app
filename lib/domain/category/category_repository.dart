import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

@lazySingleton
class CategoryRepository {
  CategoryRepository({
    required ChuckNorrisApiClient jokeApi,
  }) : _jokeApi = jokeApi;

  final ChuckNorrisApiClient _jokeApi;

  FutureResult<List<String>> getCategories() async {
    try {
      final categories = await _jokeApi.getCategories();
      return right(categories);
    } on SocketException {
      return left(const Failure.network());
    } catch (_) {
      return left(const Failure.api());
    }
  }
}
