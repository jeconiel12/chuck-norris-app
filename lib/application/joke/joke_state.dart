part of 'joke_cubit.dart';

@freezed
class JokeState with _$JokeState {
  const JokeState._();
  const factory JokeState.random() = _Random;
  const factory JokeState.category({
    required CategoryModel category,
  }) = _Category;
  const factory JokeState.favorite() = _Favorite;
}
