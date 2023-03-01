part of '../joke_page.dart';

class JokeValueText extends StatelessWidget {
  const JokeValueText({
    required this.value,
    super.key,
  });

  final String value;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: ThemeText.header5.copyWith(
          color: ThemeColor.white,
        ),
      ),
    );
  }
}
