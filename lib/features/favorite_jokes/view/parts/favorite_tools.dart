part of '../favorite_jokes_wrapper.dart';

class _FavoriteTools extends StatelessWidget {
  const _FavoriteTools({required this.joke});

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
              ButtonDelete(jokeId: joke.id),
            ],
          ),
        ],
      ),
    );
  }
}
