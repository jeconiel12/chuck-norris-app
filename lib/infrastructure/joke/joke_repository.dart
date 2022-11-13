// Dart imports:
import 'dart:io';

// Package imports:
import 'package:chuck_norris_joke/infrastructure/joke/joke_dto.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_hive.dart';
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_api.dart';

class JokeRepository implements IJokeRepository {
  final JokeApi jokeApi;
  final JokeHive jokeHive;

  const JokeRepository({
    required this.jokeApi,
    required this.jokeHive,
  });

  @override
  Future<Either<FailureModel, JokeModel>> getRandomJoke() async {
    try {
      final joke = await jokeApi.getRandomJoke();
      return Right(joke);
    } on SocketException {
      return const Left(FailureModel.network());
    } on Exception {
      return const Left(FailureModel.api());
    }
  }

  @override
  Future<Either<FailureModel, JokeModel>> getJokeByCategory(String category) async {
    try {
      final joke = await jokeApi.getJokeByCategory(category);
      return Right(joke);
    } on SocketException {
      return const Left(FailureModel.network());
    } on Exception {
      return const Left(FailureModel.api());
    }
  }

  @override
  Future<Either<FailureModel, bool>> checkIfJokeFavorite(String jokeId) async {
    try {
      final isJokeFavorite = await jokeHive.checkIfJokeFavorite(jokeId);
      return Right(isJokeFavorite);
    } on Exception {
      return const Left(FailureModel.database());
    }
  }

  @override
  Future<Either<FailureModel, Unit>> deleteFavoriteJoke(String jokeId) async {
    try {
      await jokeHive.deleteFavoriteJoke(jokeId);
      return const Right(unit);
    } on Exception {
      return const Left(FailureModel.database());
    }
  }

  @override
  Future<Either<FailureModel, List<JokeModel>>> getFavoriteJokes() async {
    try {
      final jokeTables = await jokeHive.getFavoriteJokes();
      List<JokeModel> jokes = [];
      for (var table in jokeTables) {
        jokes.add(JokeDto.fromTable(table).toDomain);
      }
      return Right(jokes);
    } on Exception {
      return const Left(FailureModel.database());
    }
  }

  @override
  Future<Either<FailureModel, Unit>> saveFavoriteJoke(JokeModel joke) async {
    try {
      await jokeHive.saveFavoriteJoke(JokeDto.fromDomain(joke).toTable);
      return const Right(unit);
    } on Exception {
      return const Left(FailureModel.database());
    }
  }
}
