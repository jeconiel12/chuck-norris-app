// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';

abstract class IJokeRepository {
  Future<Either<FailureModel, JokeModel>> getRandomJoke();
  Future<Either<FailureModel, JokeModel>> getJokeByCategory(String category);
  Future<Either<FailureModel, List<JokeModel>>> getFavoriteJokes();
  Future<Either<FailureModel, Unit>> saveFavoriteJoke(JokeModel joke);
  Future<Either<FailureModel, Unit>> deleteFavoriteJoke(String jokeId);
  Future<Either<FailureModel, bool>> checkIfJokeFavorite(String jokeId);
}
