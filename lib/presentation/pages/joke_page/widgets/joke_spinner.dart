part of '../joke_page.dart';

class JokeSpinner extends StatelessWidget {
  const JokeSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return const SpinKitPulse(
      color: ThemeColor.white,
    );
  }
}
