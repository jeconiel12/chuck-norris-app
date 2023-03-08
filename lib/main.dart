import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/di/di.dart';
import 'package:chuck_norris_joke/features/app/app.dart';

void main() async {
  await setup(const App());
}

Future<void> setup(Widget app) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize hive
  await Hive.initFlutter();
  Hive.registerAdapter<Joke>(JokeAdapter());

  // Dependency injection
  await configureInjection();

  runApp(app);
}
