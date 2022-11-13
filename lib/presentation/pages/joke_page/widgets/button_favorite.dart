part of '../joke_page.dart';

class ButtonFavorite extends StatelessWidget {
  final JokeModel joke;
  const ButtonFavorite({
    Key? key,
    required this.joke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteCubit>(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        buildWhen: (p, c) => p.isJokeFavorite != c.isJokeFavorite || p.isError != c.isError,
        builder: (context, state) {
          if (!state.isError) {
            return GestureDetector(
              onTap: () {
                context.read<FavoriteCubit>().toggleFavoriteJoke(joke);
              },
              child: Icon(
                state.isJokeFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                size: 32,
                color: ThemeColor.white,
              ),
            );
          } else {
            return const Icon(
              Icons.favorite_border_outlined,
              size: 32,
              color: ThemeColor.white,
            );
          }
        },
      ),
    );
  }
}
