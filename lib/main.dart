import 'package:chuck_norris_joke/infrastructure/color/color_table.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_table.dart';
import 'package:chuck_norris_joke/presentation/core/chuck_norris_joke_app.dart';

import 'get_it.dart' as di;

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  await setup();
  runApp(const ChuckNorrisJokeApp());
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(JokeTableAdapter());
  Hive.registerAdapter(ColorTableAdapter());
  di.setup();
}
