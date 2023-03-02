import 'package:hive/hive.dart';

import 'package:chuck_norris_joke/data/data.dart';

class JokeLocalStorage {
  JokeLocalStorage({
    Box<Joke>? jokeBox,
  }) : _jokeBox = jokeBox ?? Hive.box('jokeBox');

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
