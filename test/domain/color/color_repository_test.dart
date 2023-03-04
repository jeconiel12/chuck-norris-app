import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

import '../../helpers/helpers.dart';

class MockColorLocalStorage extends Mock implements ColorLocalStorage {}

void main() {
  group('ColorRepository', () {
    late ColorRepository colorRepository;
    late ColorLocalStorage colorLocal;

    const colorCode = 0xFFFFFFFF;

    setUp(() {
      colorLocal = MockColorLocalStorage();
      colorRepository = ColorRepository(colorLocal: colorLocal);
    });

    group('getColorCode', () {
      setUp(() {
        when(() => colorLocal.getColorCode()).thenAnswer((_) => colorCode);
      });

      test('calls colorLocal.getColorCode', () {
        colorRepository.getColorCode();

        verify(() => colorLocal.getColorCode()).called(1);
      });

      test('returns bool when succeeds', () {
        final result = colorRepository.getColorCode();
        expect(result.fetchRight(), equals(colorCode));
      });

      test('returns Failure.database when Exception caught', () {
        when(() => colorLocal.getColorCode()).thenThrow(Exception('Ouch'));

        final result = colorRepository.getColorCode();
        expect(result.fetchLeft(), equals(const Failure.database()));
      });
    });

    group('saveColorCode', () {
      setUp(() {
        when(() => colorLocal.saveColorCode(any())).thenAnswer((_) async {});
      });

      test('calls colorLocal.saveColorCode', () {
        colorRepository.saveColorCode(colorCode);

        verify(() => colorLocal.saveColorCode(colorCode)).called(1);
      });

      test('saves color code when succeeds', () async {
        final result = await colorRepository.saveColorCode(colorCode);
        expect(result.isRight(), equals(true));
      });

      test('returns Failure.database when Exception caught', () async {
        when(() => colorLocal.saveColorCode(any()))
            .thenThrow(Exception('Ouch'));

        final result = await colorRepository.saveColorCode(colorCode);
        expect(result.fetchLeft(), equals(const Failure.database()));
      });
    });
  });
}
