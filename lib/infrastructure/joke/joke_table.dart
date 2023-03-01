import 'package:hive/hive.dart';

part 'joke_table.g.dart';

@HiveType(typeId: 0)
class JokeTable {
  JokeTable({required this.id, required this.value});
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String value;
}
