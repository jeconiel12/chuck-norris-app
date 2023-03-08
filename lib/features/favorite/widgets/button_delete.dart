import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/features/favorite_jokes/favorite_jokes.dart';
import 'package:chuck_norris_joke/theme/theme.dart';

class ButtonDelete extends StatelessWidget {
  const ButtonDelete({
    required this.jokeId,
    super.key,
  });

  final String jokeId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.read<FavoriteJokesCubit>().deleteFavoriteJoke(jokeId),
      child: const Icon(
        Icons.delete,
        size: 32,
        color: ThemeColor.white,
      ),
    );
  }
}
