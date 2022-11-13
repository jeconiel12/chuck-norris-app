part of '../category_page.dart';

class _CategoryBody extends StatelessWidget {
  const _CategoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const CategoryLoading();
        } else if (state.failureOption.isSome()) {
          return const CategoryError();
        } else {
          return CategoryGrid(categories: state.categories);
        }
      },
    );
  }
}
