import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/di/di.dart';
import 'package:chuck_norris_joke/features/favorite/favorite.dart';
import 'package:chuck_norris_joke/features/random_joke/random_joke.dart';
import 'package:chuck_norris_joke/theme/theme.dart';
import 'package:chuck_norris_joke/widgets/widgets.dart';

part 'parts/random_joke_tools.dart';

class RandomJokeWrapper extends StatelessWidget {
  const RandomJokeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RandomJokeCubit>()..getRandomJoke(),
      child: const RandomJokeView(),
    );
  }
}

class RandomJokeView extends StatelessWidget {
  const RandomJokeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        JokeRefreshIndicator(
          onRefresh: context.read<RandomJokeCubit>().getRandomJoke,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: BlocBuilder<RandomJokeCubit, RandomJokeState>(
              buildWhen: (p, c) => p != c,
              builder: (context, state) {
                if (state.isLoading) {
                  return const SpinKitPulse(color: ThemeColor.white);
                }

                if (state.failureOption.isSome()) {
                  return Center(
                    child: Text(
                      state.failureOption.fold(
                        () => '',
                        (failure) => failure.message,
                      ),
                      textAlign: TextAlign.center,
                      style: ThemeText.header5.copyWith(
                        color: ThemeColor.white,
                      ),
                    ),
                  );
                }

                return Text(
                  state.joke.value,
                  textAlign: TextAlign.center,
                  style: ThemeText.header5.copyWith(
                    color: ThemeColor.white,
                  ),
                );
              },
            ),
          ),
        ),
        BlocBuilder<RandomJokeCubit, RandomJokeState>(
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            if (state.isLoading) return const SizedBox.shrink();

            return _RandomJokeTools(joke: state.joke);
          },
        ),
      ],
    );
  }
}
