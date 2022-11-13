part of 'joke_by_category_cubit.dart';

@freezed
class JokeByCategoryState with _$JokeByCategoryState {
  const JokeByCategoryState._();

  const factory JokeByCategoryState({
    required JokeModel joke,
    required bool isLoading,
    required Option<FailureModel> failureOption,
  }) = _JokeByCategoryState;

  factory JokeByCategoryState.initial() {
    return JokeByCategoryState(
      failureOption: none(),
      isLoading: false,
      joke: JokeModel.empty(),
    );
  }

  bool get showColorButton => !isLoading;
  bool get showFilterButton => !isLoading;
  bool get showFavoriteButton => !isLoading && failureOption.isNone();
  bool get showShareButton => !isLoading && failureOption.isNone();
}
