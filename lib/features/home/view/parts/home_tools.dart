part of '../home_page.dart';

class _HomeTools extends StatelessWidget {
  const _HomeTools();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ColorPicker(),
            Spacer(),
            ButtonFilter(),
          ],
        ),
      ),
    );
  }
}
