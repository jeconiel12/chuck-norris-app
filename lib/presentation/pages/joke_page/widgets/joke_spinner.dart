part of '../joke_page.dart';

class JokeSpinner extends StatelessWidget {
  const JokeSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitPulse(
      color: ThemeColor.white,
    );
  }
}
