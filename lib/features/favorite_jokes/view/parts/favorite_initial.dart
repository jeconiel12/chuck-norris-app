part of '../favorite_jokes_wrapper.dart';

class _FavoriteInitial extends StatelessWidget {
  const _FavoriteInitial({required this.isJokesEmpty});

  final bool isJokesEmpty;

  @override
  Widget build(BuildContext context) {
    return isJokesEmpty
        ? Center(
            child: Text(
              'Favorite Jokes Empty',
              textAlign: TextAlign.center,
              style: ThemeText.header5.copyWith(
                color: ThemeColor.white,
              ),
            ),
          )
        : Column(
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
