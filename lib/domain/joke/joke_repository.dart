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

  RepoResult<Joke> getRandomJoke() async {
    try {
      final joke = await _jokeApi.getRandomJoke();
      return right(joke);
    } on SocketException {
      return left(const Failure.network());
    } catch (_) {
      return left(const Failure.api());
    }
  }

  RepoResult<Joke> getJokeByCategory(String category) async {
    try {
      final joke = await _jokeApi.getJokeByCategory(category);
      return right(joke);
    } on SocketException {
      return left(const Failure.network());
    } catch (_) {
      return left(const Failure.api());
    }
  }

  RepoResult<bool> checkIfJokeFavorite(String jokeId) async {
    try {
      final isJokeFavorite = _jokeLocal.checkIfJokeFavorite(jokeId);
      return right(isJokeFavorite);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  RepoResult<Unit> deleteFavoriteJoke(String jokeId) async {
    try {
      await _jokeLocal.deleteFavoriteJoke(jokeId);
      return right(unit);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  RepoResult<List<Joke>> getFavoriteJokes() async {
    try {
      final jokes = _jokeLocal.getFavoriteJokes();
      return right(jokes);
    } catch (_) {
      return left(const Failure.database());
    }
  }

  RepoResult<Unit> saveFavoriteJoke(Joke joke) async {
    try {
      await _jokeLocal.saveFavoriteJoke(joke);
      return right(unit);
    } catch (_) {
      return left(const Failure.database());
    }
  }
}
