import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/data.dart';

class MockColorBox extends Mock implements Box<String> {}

void main() {
  group('ColorLocalStorage', () {
    late ColorLocalStorage colorLocalStorage;
    late Box<String> colorBox;

    const colorCode = '0xFFFFFFFF';

    setUp(() {
      colorBox = MockColorBox();
      colorLocalStorage = ColorLocalStorage(colorBox: colorBox);
    });

    group('saveColor', () {
      setUp(() {
        when(() => colorBox.put(any<String>(), any())).thenAnswer((_) async {});
      });

      test('calls color box put method', () {
        colorLocalStorage.saveColor(colorCode);

        verify(() => colorBox.put('colorCode', colorCode)).called(1);
      });

      test('saves color code to color box when put succeeds', () {
        expect(
          colorLocalStorage.saveColor(colorCode),
          completes,
        );
      });
    });

    group('getColor', () {
      setUp(() {
        when(() => colorBox.get(any<String>())).thenAnswer((_) => colorCode);
      });

      test('calls color box get method', () {
        colorLocalStorage.getColor();

        verify(() => colorBox.get('colorCode')).called(1);
      });

      test('returns color code when get succeeds', () {
        expect(
          colorLocalStorage.getColor(),
          equals(colorCode),
        );
      });
    });
  });
}
