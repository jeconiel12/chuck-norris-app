part of 'joke_random_cubit.dart';

@freezed
class JokeRandomState with _$JokeRandomState {
  const factory JokeRandomState({
    required Joke joke,
    required Option<Failure> failureOption,
    required bool isLoading,
  }) = _JokeRandomState;
  const JokeRandomState._();

  factory JokeRandomState.initial() {
    return JokeRandomState(
      failureOption: none(),
      isLoading: true,
      joke: Joke.empty(),
    );
  }

  bool get showColorButton => !isLoading;
  bool get showFilterButton => !isLoading;
  bool get showFavoriteButton => !isLoading && failureOption.isNone();
  bool get showShareButton => !isLoading && failureOption.isNone();
}
