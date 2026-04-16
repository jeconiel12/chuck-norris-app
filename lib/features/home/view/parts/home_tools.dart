part of '../home_page.dart';

class _HomeTools extends StatelessWidget {
  const _HomeTools();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ColorPicker(),
            Spacer(),
            ButtonFilter(),
          ],
        ),
      ),
    );
  }
}
