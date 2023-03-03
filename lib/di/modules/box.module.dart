import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';

@module
abstract class BoxModule {
  @lazySingleton
  @preResolve
  Future<Box<int>> get colorBox => Hive.openBox(ColorLocalStorage.colorBoxName);

  @lazySingleton
  @preResolve
  Future<Box<Joke>> get jokeBox => Hive.openBox(JokeLocalStorage.jokeBoxName);
}
