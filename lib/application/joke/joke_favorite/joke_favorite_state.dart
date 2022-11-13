part of 'joke_favorite_cubit.dart';

@freezed
class JokeFavoriteState with _$JokeFavoriteState {
  const JokeFavoriteState._();

  const factory JokeFavoriteState({
    required List<JokeModel> jokes,
    required Option<FailureModel> failureOption,
  }) = _JokeFavoriteState;

  factory JokeFavoriteState.initial() {
    return JokeFavoriteState(
      jokes: [],
      failureOption: none(),
    );
  }
}
