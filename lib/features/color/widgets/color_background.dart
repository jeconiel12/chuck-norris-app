import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/features/color/color.dart';

class ColorBackground extends StatelessWidget {
  const ColorBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorState>(
      buildWhen: (p, c) => p.color != c.color,
      builder: (context, state) {
        return AnimatedContainer(
          height: MediaQuery.of(context).size.height,
          duration: const Duration(milliseconds: 500),
          color: state.color,
        );
      },
    );
  }
}
