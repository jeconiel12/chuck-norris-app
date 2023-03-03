import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:chuck_norris_joke/di/di.dart' as di;
import 'package:chuck_norris_joke/infrastructure/color/color_table.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_table.dart';
import 'package:chuck_norris_joke/presentation/core/chuck_norris_joke_app.dart';

void main() async {
  await setup();
  runApp(const ChuckNorrisJokeApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Dependency injection
  di.configureInjection();

  // Initialize hive
  await Hive.initFlutter();
  Hive
    ..registerAdapter(JokeTableAdapter())
    ..registerAdapter(ColorTableAdapter());
}
