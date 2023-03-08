part of '../favorite_jokes_wrapper.dart';

class _FavoriteItem extends StatelessWidget {
  const _FavoriteItem({required this.joke});

  final Joke joke;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          joke.value,
          textAlign: TextAlign.center,
          style: ThemeText.header5.copyWith(
            color: ThemeColor.white,
          ),
        ),
      ),
    );
  }
}
