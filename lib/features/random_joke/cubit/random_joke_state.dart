part of 'random_joke_cubit.dart';

@freezed
class RandomJokeState with _$RandomJokeState {
  const factory RandomJokeState({
    required Joke joke,
    required Option<Failure> failureOption,
    required bool isLoading,
    String? category,
  }) = _RandomJokeState;

  const RandomJokeState._();

  factory RandomJokeState.initial() {
    return RandomJokeState(
      failureOption: none(),
      isLoading: true,
      joke: Joke.empty(),
    );
  }
}
