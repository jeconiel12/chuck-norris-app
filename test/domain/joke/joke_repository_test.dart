import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

import '../../helpers/helpers.dart';

class MockChuckNorrisApiClient extends Mock implements ChuckNorrisApiClient {}

class MockJokeLocalStorage extends Mock implements JokeLocalStorage {}

void main() {
  group('JokeRepository', () {
    late JokeRepository jokeRepository;
    late ChuckNorrisApiClient jokeApi;
    late JokeLocalStorage jokeLocal;

    setUp(() {
      jokeLocal = MockJokeLocalStorage();
      jokeApi = MockChuckNorrisApiClient();
      jokeRepository = JokeRepository(jokeApi: jokeApi, jokeLocal: jokeLocal);
    });

    setUpAll(() {
      registerFallbackValue(Joke.empty());
    });

    group('getRandomJoke', () {
      final joke = Joke(
        id: 'o0sukejatqchi7oyjms6mw',
        value: 'Something funny',
      );

      setUp(() {
        when(() => jokeApi.getRandomJoke()).thenAnswer((_) async => joke);
      });

      test('calls jokeApi.getRandomJoke', () {
        jokeRepository.getRandomJoke();

        verify(() => jokeApi.getRandomJoke()).called(1);
      });

      test('returns joke when succeeds', () async {
        final result = await jokeRepository.getRandomJoke();
        expect(result.fetchRight(), equals(joke));
      });

      test('returns Failure.network when SocketException caught', () async {
        when(() => jokeApi.getRandomJoke())
            .thenThrow(const SocketException('Ouch'));

        final result = await jokeRepository.getRandomJoke();
        expect(result.fetchLeft(), equals(const Failure.network()));
      });

      test('returns Failure.api when Exception caught', () async {
        when(() => jokeApi.getRandomJoke()).thenThrow(Exception('Ouch'));

        final result = await jokeRepository.getRandomJoke();
        expect(result.fetchLeft(), equals(const Failure.api()));
      });
    });

    group('getJokeByCategory', () {
      const category = 'animal';

      final joke = Joke(
        id: 'o0sukejatqchi7oyjms6mw',
        value: 'Something funny',
      );

      setUp(() {
        when(() => jokeApi.getJokeByCategory(any()))
            .thenAnswer((_) async => joke);
      });

      test('calls jokeApi.getJokeByCategory', () {
        jokeRepository.getJokeByCategory(category);

        verify(() => jokeApi.getJokeByCategory(category)).called(1);
      });

      test('returns joke when succeeds', () async {
        final result = await jokeRepository.getJokeByCategory(category);
        expect(result.fetchRight(), equals(joke));
      });

      test('returns Failure.network when SocketException caught', () async {
        when(() => jokeApi.getJokeByCategory(any()))
            .thenThrow(const SocketException('Ouch'));

        final result = await jokeRepository.getJokeByCategory(category);
        expect(result.fetchLeft(), equals(const Failure.network()));
      });

      test('returns Failure.api when Exception caught', () async {
        when(() => jokeApi.getJokeByCategory(any()))
            .thenThrow(Exception('Ouch'));

        final result = await jokeRepository.getJokeByCategory(category);
        expect(result.fetchLeft(), equals(const Failure.api()));
      });
    });

    group('checkIfJokeFavorite', () {
      const jokeId = 'o0sukejatqchi7oyjms6mw';

      setUp(() {
        when(() => jokeLocal.checkIfJokeFavorite(any()))
            .thenAnswer((_) => true);
      });

      test('calls jokeLocal.checkIfJokeFavorite', () {
        jokeRepository.checkIfJokeFavorite(jokeId);

        verify(() => jokeLocal.checkIfJokeFavorite(jokeId)).called(1);
      });

      test('returns bool when succeeds', () {
        final result = jokeRepository.checkIfJokeFavorite(jokeId);
        expect(result.fetchRight(), equals(true));
      });

      test('returns Failure.database when Exception caught', () {
        when(() => jokeLocal.checkIfJokeFavorite(any()))
            .thenThrow(Exception('Ouch'));

        final result = jokeRepository.checkIfJokeFavorite(jokeId);
        expect(result.fetchLeft(), equals(const Failure.database()));
      });
    });

    group('deleteFavoriteJoke', () {
      const jokeId = 'o0sukejatqchi7oyjms6mw';

      setUp(() {
        when(
          () => jokeLocal.deleteFavoriteJoke(any()),
        ).thenAnswer((_) async {});
      });

      test('calls jokeLocal.deleteFavoriteJoke', () {
        jokeRepository.deleteFavoriteJoke(jokeId);

        verify(() => jokeLocal.deleteFavoriteJoke(jokeId)).called(1);
      });

      test('deletes favorite joke when succeeds', () async {
        final result = await jokeRepository.deleteFavoriteJoke(jokeId);
        expect(result.isRight(), equals(true));
      });

      test('returns Failure.database when Exception caught', () async {
        when(() => jokeLocal.deleteFavoriteJoke(any()))
            .thenThrow(Exception('Ouch'));

        final result = await jokeRepository.deleteFavoriteJoke(jokeId);
        expect(result.fetchLeft(), equals(const Failure.database()));
      });
    });

    group('getFavoriteJokes', () {
      final jokes = [
        Joke(
          id: 'o0sukejatqchi7oyjms6mw',
          value: 'Something funny',
        ),
        Joke(
          id: 'bmom6jqftpqgokh8adtolw',
          value: 'Another funny thing',
        ),
      ];

      setUp(() {
        when(() => jokeLocal.getFavoriteJokes()).thenAnswer((_) => jokes);
      });

      test('calls jokeLocal.getFavoriteJokes', () {
        jokeRepository.getFavoriteJokes();

        verify(() => jokeLocal.getFavoriteJokes()).called(1);
      });

      test('returns favorite jokes when succeeds', () {
        final result = jokeRepository.getFavoriteJokes();
        expect(result.fetchRight(), equals(jokes));
      });

      test('returns Failure.database when Exception caught', () {
        when(() => jokeLocal.getFavoriteJokes()).thenThrow(Exception('Ouch'));

        final result = jokeRepository.getFavoriteJokes();
        expect(result.fetchLeft(), equals(const Failure.database()));
      });
    });

    group('saveFavoriteJoke', () {
      final joke = Joke(
        id: 'o0sukejatqchi7oyjms6mw',
        value: 'Something funny',
      );

      setUp(() {
        when(() => jokeLocal.saveFavoriteJoke(any())).thenAnswer((_) async {});
      });

      test('calls jokeLocal.saveFavoriteJoke', () {
        jokeRepository.saveFavoriteJoke(joke);

        verify(() => jokeLocal.saveFavoriteJoke(joke)).called(1);
      });

      test('saves favorite joke when succeeds', () async {
        final result = await jokeRepository.saveFavoriteJoke(joke);
        expect(result.isRight(), equals(true));
      });

      test('returns Failure.database when Exception caught', () async {
        when(() => jokeLocal.saveFavoriteJoke(any()))
            .thenThrow(Exception('Ouch'));

        final result = await jokeRepository.saveFavoriteJoke(joke);
        expect(result.fetchLeft(), equals(const Failure.database()));
      });
    });
  });
}
