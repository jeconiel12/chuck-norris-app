import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/infrastructure/color/color_table.dart';

@lazySingleton
class ColorHive {
  const ColorHive();

  Future<void> saveColor(ColorTable color) async {
    final colorBox = await Hive.openBox<ColorTable>('colorBox');
    await colorBox.put('color', color);
  }

  Future<ColorTable?> getColor() async {
    final colorBox = await Hive.openBox<ColorTable>('colorBox');
    return colorBox.get('color');
  }
}
