import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/features/color/color.dart';
import 'package:chuck_norris_joke/theme/theme.dart';

class ColorPicker extends StatelessWidget {
  const ColorPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (_) => BlocProvider.value(
            value: context.read<ColorCubit>(),
            child: const ColorDialog(),
          ),
        );
      },
      child: const Icon(
        Icons.palette,
        size: 32,
        color: ThemeColor.white,
      ),
    );
  }
}
