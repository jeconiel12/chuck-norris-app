part of 'joke_favorite_cubit.dart';

@freezed
class JokeFavoriteState with _$JokeFavoriteState {
  const factory JokeFavoriteState({
    required List<JokeModel> jokes,
    required Option<FailureModel> failureOption,
  }) = _JokeFavoriteState;

  const JokeFavoriteState._();

  factory JokeFavoriteState.initial() {
    return JokeFavoriteState(
      jokes: [],
      failureOption: none(),
    );
  }
}
