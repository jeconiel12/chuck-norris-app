import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

class CategoryRepository {
  CategoryRepository({
    ChuckNorrisApiClient? jokeApi,
  }) : _jokeApi = jokeApi ?? ChuckNorrisApiClient();

  final ChuckNorrisApiClient _jokeApi;

  RepoResult<List<String>> getCategories() async {
    try {
      final categories = await _jokeApi.getCategories();
      return right(categories);
    } on SocketException {
      return const Left(Failure.network());
    } on Exception {
      return const Left(Failure.api());
    }
  }
}
