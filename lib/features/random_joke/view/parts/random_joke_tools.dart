part of '../random_joke_wrapper.dart';

class _RandomJokeTools extends StatelessWidget {
  const _RandomJokeTools({required this.joke});

  final Joke joke;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ShareButton(value: joke.value),
              const SizedBox(width: 16),
              ButtonFavorite(joke: joke),
            ],
          ),
        ],
      ),
    );
  }
}
