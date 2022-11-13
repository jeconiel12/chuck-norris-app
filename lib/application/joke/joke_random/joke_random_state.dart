part of 'joke_random_cubit.dart';

@freezed
class JokeRandomState with _$JokeRandomState {
  const JokeRandomState._();

  const factory JokeRandomState({
    required JokeModel joke,
    required Option<FailureModel> failureOption,
    required bool isLoading,
  }) = _JokeRandomState;

  factory JokeRandomState.initial() {
    return JokeRandomState(
      failureOption: none(),
      isLoading: true,
      joke: JokeModel.empty(),
    );
  }

  bool get showColorButton => !isLoading;
  bool get showFilterButton => !isLoading;
  bool get showFavoriteButton => !isLoading && failureOption.isNone();
  bool get showShareButton => !isLoading && failureOption.isNone();
}
