import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/features/color/color.dart';
import 'package:chuck_norris_joke/features/favorite_jokes/favorite_jokes.dart';
import 'package:chuck_norris_joke/features/home/home.dart';
import 'package:chuck_norris_joke/features/random_joke/random_joke.dart';

part 'parts/home_tools.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ColorBackground(),
          BlocBuilder<JokeCubit, JokeState>(
            buildWhen: (p, c) => p != c,
            builder: (context, state) {
              return state.when(
                random: () => const RandomJokeWrapper(),
                favorite: () => const FavoriteJokesWrapper(),
                // TODO: Combine random & category joke
                category: (category) => const FavoriteJokesWrapper(),
              );
            },
          ),
          const _HomeTools(),
        ],
      ),
    );
  }
}
