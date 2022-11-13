part of '../joke_page.dart';

class JokeValueText extends StatelessWidget {
  final String value;
  const JokeValueText({
    Key? key,
    required this.value,
  }) : super(key: key);

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
