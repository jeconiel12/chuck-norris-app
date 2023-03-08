part of 'joke_cubit.dart';

@freezed
class JokeState with _$JokeState {
  const factory JokeState.random([String? category]) = _Random;
  const factory JokeState.favorite() = _Favorite;
}
