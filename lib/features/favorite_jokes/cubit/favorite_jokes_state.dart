part of 'favorite_jokes_cubit.dart';

@freezed
class FavoriteJokesState with _$FavoriteJokesState {
  const factory FavoriteJokesState({
    required List<Joke> jokes,
    required Option<Failure> failureOption,
  }) = _FavoriteJokesState;

  const FavoriteJokesState._();

  factory FavoriteJokesState.initial() {
    return FavoriteJokesState(
      jokes: [],
      failureOption: none(),
    );
  }

  bool get isJokesEmpty => jokes.isEmpty;
}
