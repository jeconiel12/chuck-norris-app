part of 'joke_page.dart';

class JokeByCategory extends StatefulWidget {
  final CategoryModel category;
  const JokeByCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<JokeByCategory> createState() => _JokeByCategoryState();
}

class _JokeByCategoryState extends State<JokeByCategory> {
  final JokeByCategoryCubit _jokeByCategoryCubit = getIt<JokeByCategoryCubit>();

  @override
  void initState() {
    super.initState();
    _jokeByCategoryCubit;
    _jokeByCategoryCubit.getJokeByCategory(widget.category);
  }

  @override
  void didUpdateWidget(covariant JokeByCategory oldWidget) {
    super.didUpdateWidget(oldWidget);
    _jokeByCategoryCubit.getJokeByCategory(widget.category);
  }

  @override
  void dispose() {
    _jokeByCategoryCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _jokeByCategoryCubit,
      child: Stack(
        children: [
          JokeRefreshIndicator(
            onRefresh: () => _jokeByCategoryCubit.getJokeByCategory(widget.category),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<JokeByCategoryCubit, JokeByCategoryState>(
                buildWhen: (p, c) => p.showColorButton != c.showColorButton,
                builder: (context, state) {
                  return state.showColorButton ? const ButtonColor() : const SizedBox.shrink();
                },
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: BlocBuilder<JokeByCategoryCubit, JokeByCategoryState>(
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
                    BlocBuilder<JokeByCategoryCubit, JokeByCategoryState>(
                      buildWhen: (p, c) => p.showFilterButton != c.showFilterButton,
                      builder: (context, state) {
                        return state.showFilterButton
                            ? const ButtonFilter()
                            : const SizedBox.shrink();
                      },
                    ),
                    const Spacer(),
                    BlocBuilder<JokeByCategoryCubit, JokeByCategoryState>(
                      buildWhen: (p, c) => p.showShareButton != c.showShareButton,
                      builder: (context, state) {
                        return state.showShareButton
                            ? ButtonShare(value: state.joke.value)
                            : const SizedBox.shrink();
                      },
                    ),
                    const SizedBox(width: 16),
                    BlocBuilder<JokeByCategoryCubit, JokeByCategoryState>(
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

  Widget _buildChild(JokeByCategoryState state) {
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
