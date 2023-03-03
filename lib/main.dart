import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/di/di.dart' as di;
import 'package:chuck_norris_joke/presentation/core/chuck_norris_joke_app.dart';

void main() async {
  await setup();
  runApp(const ChuckNorrisJokeApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize hive
  await Hive.initFlutter();
  Hive.registerAdapter<Joke>(JokeAdapter());

  // Dependency injection
  await di.configureInjection();
}
