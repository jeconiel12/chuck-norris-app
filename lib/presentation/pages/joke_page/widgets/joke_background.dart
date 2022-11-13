part of '../joke_page.dart';

class JokeBackground extends StatelessWidget {
  const JokeBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(
      buildWhen: (previous, current) => previous.color != current.color,
      builder: (context, state) {
        return AnimatedContainer(
          height: MediaQuery.of(context).size.height,
          color: state.color,
          duration: const Duration(milliseconds: 500),
        );
      },
    );
  }
}
