part of '../joke_page.dart';

class JokeErrorMessage extends StatelessWidget {
  const JokeErrorMessage({
    required this.message,
    super.key,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: ThemeText.header5.copyWith(
          color: ThemeColor.white,
        ),
      ),
    );
  }
}
