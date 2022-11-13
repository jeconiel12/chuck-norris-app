part of '../joke_page.dart';

class JokeErrorMessage extends StatelessWidget {
  final String message;
  const JokeErrorMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

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
