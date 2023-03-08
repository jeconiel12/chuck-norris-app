import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

@lazySingleton
class JokeRepository {
  JokeRepository({
    required ChuckNorrisApiClient jokeApi,
    required JokeLocalStorage jokeLocal,
  })  : _jokeApi = jokeApi,
        _jokeLocal = jokeLocal;

  final ChuckNorrisApiClient _jokeApi;
  final JokeLocalStorage _jokeLocal;

  FutureResult<Joke> getRandomJoke([String? category]) async {
    try {
      final joke = await _jokeApi.getRandomJoke(category);
      return right(joke);
    } on SocketException {
      return left(const Failure.network());
    } catch (_) {
      return left(const Failure.api());
    }
  }

  Result<bool> checkIfJokeFavorite(String jokeId) {
    try {
      final isJokeFavorite = _jokeLocal.checkIfJokeFavorite(jokeId);
      return right(isJokeFavorite);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  FutureResult<Unit> deleteFavoriteJoke(String jokeId) async {
    try {
      await _jokeLocal.deleteFavoriteJoke(jokeId);
      return right(unit);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  Result<List<Joke>> getFavoriteJokes() {
    try {
      final jokes = _jokeLocal.getFavoriteJokes();
      return right(jokes);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  FutureResult<Unit> saveFavoriteJoke(Joke joke) async {
    try {
      await _jokeLocal.saveFavoriteJoke(joke);
      return right(unit);
    } catch (_) {
      return left(const Failure.database());
    }
  }
}
