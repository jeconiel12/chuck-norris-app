import 'package:chuck_norris_joke/presentation/pages/joke_page/joke_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ChuckNorrisJokeApp extends StatefulWidget {
  const ChuckNorrisJokeApp({Key? key}) : super(key: key);

  @override
  State<ChuckNorrisJokeApp> createState() => _ChuckNorrisJokeAppState();
}

class _ChuckNorrisJokeAppState extends State<ChuckNorrisJokeApp> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const JokePage(),
      theme: ThemeData(fontFamily: 'Inter'),
    );
  }
}
