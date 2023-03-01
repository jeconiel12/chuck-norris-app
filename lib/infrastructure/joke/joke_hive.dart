import 'package:hive/hive.dart';

import 'package:chuck_norris_joke/infrastructure/joke/joke_table.dart';

class JokeHive {
  const JokeHive();

  Future<bool> checkIfJokeFavorite(String jokeId) async {
    final jokeBox = await Hive.openBox<JokeTable>('jokeBox');
    return jokeBox.containsKey(jokeId);
  }

  Future<void> deleteFavoriteJoke(String jokeId) async {
    final jokeBox = await Hive.openBox<JokeTable>('jokeBox');
    await jokeBox.delete(jokeId);
  }

  Future<void> saveFavoriteJoke(JokeTable table) async {
    final jokeBox = await Hive.openBox<JokeTable>('jokeBox');
    await jokeBox.put(table.id, table);
  }

  Future<List<JokeTable>> getFavoriteJokes() async {
    final jokeBox = await Hive.openBox<JokeTable>('jokeBox');
    final jokeKeys = jokeBox.keys;
    final jokes = <JokeTable>[];

    for (final key in jokeKeys) {
      jokes.add(jokeBox.get(key)!);
    }

    return jokes;
  }
}
