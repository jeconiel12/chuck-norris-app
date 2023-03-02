import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';

import 'package:chuck_norris_joke/data/data.dart';

class MockJokeBox extends Mock implements Box<Joke> {}

void main() {
  group('JokeLocalStorage', () {
    late JokeLocalStorage jokeLocalStorage;
    late Box<Joke> jokeBox;

    setUp(() {
      jokeBox = MockJokeBox();
      jokeLocalStorage = JokeLocalStorage(jokeBox: jokeBox);
    });

    setUpAll(() {
      registerFallbackValue(Joke.empty());
    });

    group('checkIfJokeFavorite', () {
      const jokeId = 'o0sukejatqchi7oyjms6mw';

      setUp(() {
        when(() => jokeBox.containsKey(any<String>())).thenAnswer((_) => true);
      });

      test('calls joke box containsKey method', () {
        jokeLocalStorage.checkIfJokeFavorite(jokeId);

        verify(() => jokeBox.containsKey(jokeId)).called(1);
      });

      test('returns containsKey value when succeeds', () {
        expect(
          jokeLocalStorage.checkIfJokeFavorite(jokeId),
          equals(true),
        );
      });
    });

    group('deleteFavorite', () {
      const jokeId = 'o0sukejatqchi7oyjms6mw';

      setUp(() {
        when(() => jokeBox.delete(any<String>())).thenAnswer((_) async {});
      });

      test('calls joke box delete method', () {
        jokeLocalStorage.deleteFavoriteJoke(jokeId);

        verify(() => jokeBox.delete(jokeId)).called(1);
      });

      test('deletes favorite joke when succeeds', () {
        expect(
          jokeLocalStorage.deleteFavoriteJoke(jokeId),
          completes,
        );
      });
    });

    group('saveFavoriteJoke', () {
      final joke = Joke(
        id: 'o0sukejatqchi7oyjms6mw',
        value: 'Something funny',
      );

      setUp(() {
        when(() => jokeBox.put(any<String>(), any())).thenAnswer((_) async {});
      });

      test('calls joke box put method', () {
        jokeLocalStorage.saveFavoriteJoke(joke);

        verify(() => jokeBox.put(joke.id, joke)).called(1);
      });

      test('saves favorite joke when succeeds', () {
        expect(
          jokeLocalStorage.saveFavoriteJoke(joke),
          completes,
        );
      });
    });

    test('getFavoriteJokes returns joke box values', () {
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

      when(() => jokeBox.values).thenAnswer((_) => jokes);

      expect(
        jokeLocalStorage.getFavoriteJokes(),
        jokes,
      );
    });
  });
}
