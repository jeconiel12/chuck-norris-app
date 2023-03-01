part of '../category_page.dart';

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.close),
          ),
          const SizedBox(width: 16),
          const Text('Category', style: ThemeText.header6),
        ],
      ),
    );
  }
}
