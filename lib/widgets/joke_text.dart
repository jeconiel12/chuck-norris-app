import 'package:flutter/material.dart';

import 'package:chuck_norris_joke/theme/theme.dart';

class JokeText extends StatelessWidget {
  const JokeText({
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
