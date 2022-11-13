part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    required bool isJokeFavorite,
    required bool isError,
  }) = _FavoriteState;

  factory FavoriteState.initial() {
    return const FavoriteState(
      isJokeFavorite: false,
      isError: false,
    );
  }

  const FavoriteState._();
}
