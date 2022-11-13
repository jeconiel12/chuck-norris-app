// Package imports:
import 'package:hive/hive.dart';

part 'color_table.g.dart';

@HiveType(typeId: 1)
class ColorTable {
  @HiveField(0)
  final String code;

  ColorTable({required this.code});
}
