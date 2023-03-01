part of '../joke_page.dart';

class ButtonDelete extends StatelessWidget {
  const ButtonDelete({
    required this.jokeId,
    super.key,
  });

  final String jokeId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<JokeFavoriteCubit>().deleteFavoriteJoke(jokeId),
      child: const Icon(
        Icons.delete,
        size: 32,
        color: ThemeColor.white,
      ),
    );
  }
}
