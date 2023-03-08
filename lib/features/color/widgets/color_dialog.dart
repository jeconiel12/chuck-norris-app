import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chuck_norris_joke/features/color/color.dart';
import 'package:chuck_norris_joke/theme/theme.dart';

class ColorDialog extends StatelessWidget {
  const ColorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(32, 24, 32, 12),
        width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select a Color',
              style: ThemeText.header5.copyWith(color: ThemeColor.text),
            ),
            const SizedBox(height: 32),
            Wrap(
              spacing: 32.25,
              runSpacing: 32.25,
              children: ThemeColor.colors
                  .map(
                    (color) => BlocBuilder<ColorCubit, ColorState>(
                      buildWhen: (p, c) => color == p.color || color == c.color,
                      builder: (context, state) {
                        return _ColorOption(
                          color: color,
                          isSelected: color == state.color,
                          onColorTapped: context.read<ColorCubit>().setColor,
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'CLOSE',
                  style: ThemeText.button.copyWith(color: ThemeColor.text60),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ColorOption extends StatelessWidget {
  const _ColorOption({
    required this.color,
    required this.onColorTapped,
    required this.isSelected,
  });

  final Color color;
  final void Function(Color color) onColorTapped;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onColorTapped(color),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: isSelected
            ? Container(
                margin: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ThemeColor.white,
                    width: 2,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
