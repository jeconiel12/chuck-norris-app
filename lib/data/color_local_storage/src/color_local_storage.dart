import 'package:hive/hive.dart';

class ColorLocalStorage {
  ColorLocalStorage({
    Box<String>? colorBox,
  }) : _colorBox = colorBox ?? Hive.box('colorBox');

  final Box<String> _colorBox;

  Future<void> saveColor(String color) async {
    await _colorBox.put('colorCode', color);
  }

  String? getColor() => _colorBox.get('colorCode');
}
