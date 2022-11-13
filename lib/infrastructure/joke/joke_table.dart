// Package imports:
import 'package:hive/hive.dart';

part 'joke_table.g.dart';

@HiveType(typeId: 0)
class JokeTable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String value;

  JokeTable({required this.id, required this.value});
}
