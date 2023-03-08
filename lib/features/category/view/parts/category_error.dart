part of '../category_page.dart';

class CategoryError extends StatelessWidget {
  const CategoryError({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Center(
            child: Text(
              'Something went wrong please try again',
              textAlign: TextAlign.center,
              style: ThemeText.header6.copyWith(color: ThemeColor.text),
            ),
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: context.read<CategoryCubit>().getCategories,
            child: const Text(
              'TRY AGAIN',
              style: ThemeText.button,
            ),
          )
        ],
      ),
    );
  }
}
