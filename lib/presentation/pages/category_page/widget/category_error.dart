part of '../category_page.dart';

class CategoryError extends StatelessWidget {
  const CategoryError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 100, 24, 0),
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
            child: Text(
              'TRY AGAIN',
              style: ThemeText.button,
            ),
          )
        ],
      ),
    );
  }
}
