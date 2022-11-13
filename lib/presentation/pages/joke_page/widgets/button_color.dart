part of '../joke_page.dart';

class ButtonColor extends StatelessWidget {
  const ButtonColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<ColorCubit>(context),
              child: const _ColorDialog(),
            ),
          );
        },
        child: const Icon(
          Icons.palette,
          size: 32,
          color: ThemeColor.white,
        ),
      ),
    );
  }
}

class _ColorDialog extends StatelessWidget {
  const _ColorDialog({Key? key}) : super(key: key);

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
              // Min width of dialog 280 =  32 (padding) * 2 + 50 (option) * 3 + 32.25 * 2 (spacing)
              spacing: 32.25,
              runSpacing: 32.25,
              children: const [
                _ColorOption(color: ThemeColor.red),
                _ColorOption(color: ThemeColor.blue),
                _ColorOption(color: ThemeColor.yellow),
                _ColorOption(color: ThemeColor.green),
                _ColorOption(color: ThemeColor.orange),
                _ColorOption(color: ThemeColor.pink),
                _ColorOption(color: ThemeColor.purple),
                _ColorOption(color: ThemeColor.brown),
                _ColorOption(color: ThemeColor.grey),
              ],
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
  final Color color;

  const _ColorOption({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ColorCubit>().changeColor(color);
      },
      child: BlocBuilder<ColorCubit, ColorState>(
        buildWhen: (p, c) => p.color == color || c.color == color,
        builder: (context, state) {
          return state.color == color ? _buildSelected() : _buildUnselected();
        },
      ),
    );
  }

  Container _buildUnselected() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  Container _buildSelected() {
    return Container(
      padding: const EdgeInsets.all(3),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ThemeColor.white,
        border: Border.all(color: color, width: 2),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
