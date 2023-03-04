import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/data.dart';

class MockColorBox extends Mock implements Box<int> {}

void main() {
  group('ColorLocalStorage', () {
    late ColorLocalStorage colorLocalStorage;
    late Box<int> colorBox;

    const colorKey = ColorLocalStorage.colorKey;
    const colorCode = 0xFFFFFFFF;

    setUp(() {
      colorBox = MockColorBox();
      colorLocalStorage = ColorLocalStorage(colorBox: colorBox);
    });

    group('saveColorCode', () {
      setUp(() {
        when(() => colorBox.put(any<String>(), any())).thenAnswer((_) async {});
      });

      test('calls colorBox.put', () {
        colorLocalStorage.saveColorCode(colorCode);

        verify(() => colorBox.put(colorKey, colorCode)).called(1);
      });

      test('saves color code to colorBox when succeeds', () {
        expect(
          colorLocalStorage.saveColorCode(colorCode),
          completes,
        );
      });
    });

    group('getColor', () {
      setUp(() {
        when(() => colorBox.get(any<String>())).thenAnswer((_) => colorCode);
      });

      test('calls colorBox.get', () {
        colorLocalStorage.getColorCode();

        verify(() => colorBox.get(colorKey)).called(1);
      });

      test('returns color code when succeeds', () {
        expect(
          colorLocalStorage.getColorCode(),
          equals(colorCode),
        );
      });
    });
  });
}
