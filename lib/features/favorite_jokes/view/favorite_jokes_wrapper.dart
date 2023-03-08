import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/di/di.dart';
import 'package:chuck_norris_joke/features/favorite/favorite.dart';
import 'package:chuck_norris_joke/features/favorite_jokes/favorite_jokes.dart';
import 'package:chuck_norris_joke/theme/theme.dart';
import 'package:chuck_norris_joke/widgets/widgets.dart';

part 'parts/favorite_initial.dart';
part 'parts/favorite_item.dart';
part 'parts/favorite_tools.dart';

class FavoriteJokesWrapper extends StatelessWidget {
  const FavoriteJokesWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteJokesCubit>()..getFavoriteJokes(),
      child: const FavoriteJokesView(),
    );
  }
}

class FavoriteJokesView extends StatefulWidget {
  const FavoriteJokesView({super.key});

  @override
  State<FavoriteJokesView> createState() => _FavoriteJokesViewState();
}

class _FavoriteJokesViewState extends State<FavoriteJokesView> {
  // Start from -1 because pageview start with initial item
  int currentFavoriteIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteJokesCubit, FavoriteJokesState>(
      listenWhen: (_, c) => c.isJokesEmpty,
      listener: (context, state) {
        // Reset to initial state when all favorites deleted
        setState(() {
          currentFavoriteIndex = -1;
        });
      },
      buildWhen: (p, c) => p.jokes != c.jokes,
      builder: (context, state) {
        return Stack(
          children: [
            PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  currentFavoriteIndex = index - 1;
                });
              },
              itemCount: state.jokes.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _FavoriteInitial(isJokesEmpty: state.isJokesEmpty);
                }
                return _FavoriteItem(joke: state.jokes[index - 1]);
              },
            ),
            if (currentFavoriteIndex >= 0)
              _FavoriteTools(joke: state.jokes[currentFavoriteIndex]),
          ],
        );
      },
    );
  }
}
