part of 'joke_page.dart';

class JokeFavorites extends StatefulWidget {
  const JokeFavorites({Key? key}) : super(key: key);

  @override
  State<JokeFavorites> createState() => _JokeFavoritesState();
}

class _JokeFavoritesState extends State<JokeFavorites> {
  final JokeFavoriteCubit _jokeFavoriteCubit = getIt<JokeFavoriteCubit>();

  @override
  void initState() {
    _jokeFavoriteCubit.getFavoriteJokes();
    super.initState();
  }

  @override
  void dispose() {
    _jokeFavoriteCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JokeFavoriteCubit>()..getFavoriteJokes(),
      child: BlocBuilder<JokeFavoriteCubit, JokeFavoriteState>(
        buildWhen: (p, c) => p.jokes != c.jokes,
        builder: (context, state) {
          return PageView.builder(
            itemCount: state.jokes.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return JokeSliderInitial(
                  isJokesEmpty: state.jokes.isEmpty,
                );
              } else {
                return JokeView(
                  joke: state.jokes[index - 1],
                );
              }
            },
          );
        },
      ),
    );
  }
}

class JokeView extends StatelessWidget {
  final JokeModel joke;

  const JokeView({
    Key? key,
    required this.joke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ButtonColor(),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: JokeValueText(value: joke.value),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              const ButtonFilter(),
              const Spacer(),
              ButtonShare(
                value: joke.value,
              ),
              const SizedBox(width: 16),
              ButtonDelete(
                jokeId: joke.id,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class JokeSliderInitial extends StatelessWidget {
  final bool isJokesEmpty;

  const JokeSliderInitial({
    Key? key,
    required this.isJokesEmpty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ButtonColor(),
        Expanded(
          child: isJokesEmpty ? buildEmptyText() : buildAvailableText(),
        ),
        const Padding(
          padding: EdgeInsets.all(24),
          child: ButtonFilter(),
        ),
      ],
    );
  }

  Widget buildEmptyText() {
    return Center(
      child: Text(
        'Favorite Jokes Empty',
        textAlign: TextAlign.center,
        style: ThemeText.header5.copyWith(
          color: ThemeColor.white,
        ),
      ),
    );
  }

  Widget buildAvailableText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Swipe left to see favorite joke',
          textAlign: TextAlign.center,
          style: ThemeText.header5.copyWith(
            color: ThemeColor.white,
          ),
        ),
        const Icon(
          Icons.arrow_right_alt,
          color: ThemeColor.white,
          size: 40,
        ),
      ],
    );
  }
}
