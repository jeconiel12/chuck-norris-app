import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';

@lazySingleton
class JokeLocalStorage {
  JokeLocalStorage({
    required Box<Joke> jokeBox,
  }) : _jokeBox = jokeBox;

  static const String jokeBoxName = 'JOKE_BOX';

  final Box<Joke> _jokeBox;

  bool checkIfJokeFavorite(String jokeId) => _jokeBox.containsKey(jokeId);

  Future<void> deleteFavoriteJoke(String jokeId) async {
    await _jokeBox.delete(jokeId);
  }

  Future<void> saveFavoriteJoke(Joke joke) async {
    await _jokeBox.put(joke.id, joke);
  }

  List<Joke> getFavoriteJokes() => _jokeBox.values.toList();
}
