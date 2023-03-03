import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ColorLocalStorage {
  ColorLocalStorage({
    required Box<int> colorBox,
  }) : _colorBox = colorBox;

  static const String colorBoxName = 'COLOR_BOX';
  static const String colorKey = 'COLOR_CODE';

  final Box<int> _colorBox;

  Future<void> saveColor(int colorCode) async {
    await _colorBox.put(colorKey, colorCode);
  }

  int? getColorCode() => _colorBox.get(colorKey);
}
