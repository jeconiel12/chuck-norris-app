import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/chuck_norris_api/chuck_norris_api.dart';

class MockHttpClient extends Mock with http.Client {}

void main() {
  group('ChuckNorrisApiClient', () {
    late ChuckNorrisApiClient chuckNorrisApiClient;
    late http.Client httpClient;

    const baseUrl = ChuckNorrisApiClient.baseUrl;

    setUp(() {
      httpClient = MockHttpClient();
      chuckNorrisApiClient = ChuckNorrisApiClient(httpClient: httpClient);
    });

    setUpAll(() {
      registerFallbackValue(Uri());
    });

    group('getRandomJoke', () {
      late Uri uri;

      final expectedResponse = Joke(
        id: 'o0sukejatqchi7oyjms6mw',
        value: 'Something funny',
      );

      setUp(() {
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => http.Response(
            jsonEncode(expectedResponse),
            HttpStatus.ok,
          ),
        );

        uri = Uri.https(baseUrl, '/jokes/random', {});
      });

      test('sends httpClient.get request', () {
        chuckNorrisApiClient.getRandomJoke();

        verify(() => httpClient.get(uri)).called(1);
      });

      test('sends httpClient.get request with query params', () {
        const category = 'animal';

        uri = Uri.https(baseUrl, '/jokes/random', {
          'category': category,
        });

        chuckNorrisApiClient.getRandomJoke(category);

        verify(() => httpClient.get(uri)).called(1);
      });

      test('returns joke when request succeeds', () {
        expect(
          chuckNorrisApiClient.getRandomJoke(),
          completion(equals(expectedResponse)),
        );
      });

      test('throws exception when request status not ok', () {
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => http.Response(
            'failed response',
            HttpStatus.badRequest,
          ),
        );

        expect(
          chuckNorrisApiClient.getRandomJoke(),
          throwsA(isA<Exception>()),
        );
      });
    });

    group('getCategories', () {
      final uri = Uri.https(baseUrl, '/jokes/categories');

      final expectedResponse = ['animal', 'comedy', 'crime'];

      setUp(() {
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => http.Response(
            jsonEncode(expectedResponse),
            HttpStatus.ok,
          ),
        );
      });

      test('sends httpClient.get request', () {
        chuckNorrisApiClient.getCategories();

        verify(() => httpClient.get(uri)).called(1);
      });

      test('returns categories when request succeeds', () {
        expect(
          chuckNorrisApiClient.getCategories(),
          completion(equals(expectedResponse)),
        );
      });

      test('throws exception when request status not ok', () {
        when(() => httpClient.get(any())).thenAnswer(
          (_) async => http.Response(
            'failed response',
            HttpStatus.badRequest,
          ),
        );

        expect(
          chuckNorrisApiClient.getCategories,
          throwsA(isA<Exception>()),
        );
      });
    });
  });
}
