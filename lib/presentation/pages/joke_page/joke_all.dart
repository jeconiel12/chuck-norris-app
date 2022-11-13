part of 'joke_page.dart';

class JokeAll extends StatefulWidget {
  const JokeAll({Key? key}) : super(key: key);

  @override
  State<JokeAll> createState() => _JokeAllState();
}

class _JokeAllState extends State<JokeAll> {
  final JokeRandomCubit _jokeRandomCubit = getIt<JokeRandomCubit>();

  @override
  void initState() {
    _jokeRandomCubit.getRandomJoke();
    super.initState();
  }

  @override
  void dispose() {
    _jokeRandomCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _jokeRandomCubit,
      child: Stack(
        children: [
          JokeRefreshIndicator(onRefresh: () => _jokeRandomCubit.getRandomJoke()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<JokeRandomCubit, JokeRandomState>(
                buildWhen: (p, c) => p.showColorButton != c.showColorButton,
                builder: (context, state) {
                  return state.showColorButton ? const ButtonColor() : const SizedBox.shrink();
                },
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: BlocBuilder<JokeRandomCubit, JokeRandomState>(
                      buildWhen: (p, c) => p != c,
                      builder: (context, state) {
                        return _buildChild(state);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    BlocBuilder<JokeRandomCubit, JokeRandomState>(
                      buildWhen: (p, c) => p.showFilterButton != c.showFilterButton,
                      builder: (context, state) {
                        return state.showFilterButton
                            ? const ButtonFilter()
                            : const SizedBox.shrink();
                      },
                    ),
                    const Spacer(),
                    BlocBuilder<JokeRandomCubit, JokeRandomState>(
                      buildWhen: (p, c) => p.showShareButton != c.showShareButton,
                      builder: (context, state) {
                        return state.showShareButton
                            ? ButtonShare(value: state.joke.value)
                            : const SizedBox.shrink();
                      },
                    ),
                    const SizedBox(width: 16),
                    BlocBuilder<JokeRandomCubit, JokeRandomState>(
                      buildWhen: (p, c) => p.showFavoriteButton != c.showFavoriteButton,
                      builder: (context, state) {
                        return state.showFavoriteButton
                            ? ButtonFavorite(joke: state.joke)
                            : const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChild(JokeRandomState state) {
    if (state.isLoading) {
      return const JokeSpinner();
    } else if (state.failureOption.isSome()) {
      return JokeErrorMessage(
        message: state.failureOption.fold(
          () => '',
          (failure) => failure.when(
            network: () => 'No Connection',
            api: () => 'Something went wrong on server',
            database: () => 'Something went wrong on local db',
          ),
        ),
      );
    } else {
      return JokeValueText(value: state.joke.value);
    }
  }
}
