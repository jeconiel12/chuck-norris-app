import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:chuck_norris_joke/features/color/color.dart';
import 'package:chuck_norris_joke/theme/theme.dart';
import 'package:chuck_norris_joke/utils/utils.dart';
import 'package:chuck_norris_joke/widgets/widgets.dart';

class ShareButton extends StatefulWidget with ShareScreenshot {
  ShareButton({required this.value, super.key});

  final String value;

  @override
  State<ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
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
  const SharedWidgetImage({
    required this.value,
    required this.height,
    required this.width,
    required this.color,
    super.key,
  });
  final String value;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: JokeText(value: value),
    );
  }
}
