part of '../joke_page.dart';

class ButtonShare extends StatefulWidget with ShareScreenshot {
  final String value;

  ButtonShare({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<ButtonShare> createState() => _ButtonShareState();
}

class _ButtonShareState extends State<ButtonShare> {
  bool _isLoading = false;

  Future<void> _shareScreen(Widget sharedWidget) async {
    setState(() => _isLoading = true);
    await widget.call(sharedWidget);
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const SpinKitRing(
            color: ThemeColor.white,
            size: 32,
          )
        : BlocBuilder<ColorCubit, ColorState>(
            buildWhen: (p, c) => p.color != c.color,
            builder: (context, state) {
              return GestureDetector(
                onTap: () => _shareScreen(
                  SharedWidgetImage(
                    value: widget.value,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: state.color,
                  ),
                ),
                child: const Icon(
                  Icons.share,
                  size: 32,
                  color: ThemeColor.white,
                ),
              );
            },
          );
  }
}

class SharedWidgetImage extends StatelessWidget {
  final String value;
  final double height;
  final double width;
  final Color color;

  const SharedWidgetImage({
    Key? key,
    required this.value,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: JokeValueText(value: value),
    );
  }
}
