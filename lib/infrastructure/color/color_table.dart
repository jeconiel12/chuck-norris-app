import 'package:hive/hive.dart';

part 'color_table.g.dart';

@HiveType(typeId: 1)
class ColorTable {
  ColorTable({required this.code});

  @HiveField(0)
  final String code;
}
