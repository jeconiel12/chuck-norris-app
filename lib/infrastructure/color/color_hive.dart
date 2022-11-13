import 'package:chuck_norris_joke/infrastructure/color/color_table.dart';
import 'package:hive/hive.dart';

class ColorHive {
  const ColorHive();

  Future<void> saveColor(ColorTable color) async {
    final colorBox = await Hive.openBox('colorBox');
    await colorBox.put('color', color);
  }

  Future<ColorTable?> getColor() async {
    final colorBox = await Hive.openBox('colorBox');
    return await colorBox.get('color');
  }
}
