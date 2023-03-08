import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/di/di.dart';
import 'package:chuck_norris_joke/features/favorite/favorite.dart';
import 'package:chuck_norris_joke/theme/theme.dart';

class ButtonFavorite extends StatelessWidget {
  const ButtonFavorite({
    required this.joke,
    super.key,
  });

  final Joke joke;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteCubit>(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        buildWhen: (p, c) =>
            p.isJokeFavorite != c.isJokeFavorite || p.isError != c.isError,
        builder: (context, state) {
          if (!state.isError) {
            return GestureDetector(
              onTap: () {
                context.read<FavoriteCubit>().toggleFavoriteJoke(joke);
              },
              child: Icon(
                state.isJokeFavorite
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
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
