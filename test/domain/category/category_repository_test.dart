import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

import '../../helpers/helpers.dart';

class MockChuckNorrisApiClient extends Mock implements ChuckNorrisApiClient {}

void main() {
  group('CategoryRepository', () {
    late CategoryRepository categoryRepository;
    late ChuckNorrisApiClient jokeApi;

    setUp(() {
      jokeApi = MockChuckNorrisApiClient();
      categoryRepository = CategoryRepository(jokeApi: jokeApi);
    });

    group('getCategories', () {
      const categories = ['animal', 'comedy', 'drama'];

      setUp(() {
        when(() => jokeApi.getCategories()).thenAnswer((_) async => categories);
      });

      test('calls jokeApi.getCategories', () {
        categoryRepository.getCategories();

        verify(() => jokeApi.getCategories()).called(1);
      });

      test('returns categories when succeeds', () async {
        final result = await categoryRepository.getCategories();
        expect(result.fetchRight(), equals(categories));
      });

      test('returns Failure.network when SocketException caught', () async {
        when(() => jokeApi.getCategories())
            .thenThrow(const SocketException('Ouch'));

        final result = await categoryRepository.getCategories();
        expect(result.fetchLeft(), equals(const Failure.network()));
      });

      test('returns Failure.api when Exception caught', () async {
        when(() => jokeApi.getCategories()).thenThrow(Exception('Ouch'));

        final result = await categoryRepository.getCategories();
        expect(result.fetchLeft(), equals(const Failure.api()));
      });
    });
  });
}
