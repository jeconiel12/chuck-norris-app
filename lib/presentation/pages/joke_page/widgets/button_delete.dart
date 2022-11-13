part of '../joke_page.dart';

class ButtonDelete extends StatelessWidget {
  final String jokeId;

  const ButtonDelete({
    Key? key,
    required this.jokeId,
  }) : super(key: key);

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
