part of '../joke_page.dart';

class ButtonFilter extends StatelessWidget {
  const ButtonFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final jokeCubit = BlocProvider.of<JokeCubit>(context);
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return BlocProvider.value(
            value: jokeCubit,
            child: const CategoryDialog(),
          );
        },
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.auto_awesome_mosaic,
            size: 32,
            color: ThemeColor.white,
          ),
          const SizedBox(width: 8),
          BlocBuilder<JokeCubit, JokeState>(
            buildWhen: (p, c) => p != c,
            builder: (context, state) {
              return Text(
                state.when(
                  random: () => 'All Jokes',
                  favorite: () => 'My Favorites',
                  category: (category) {
                    final String text = category.value;
                    return 'Category: ${text.substring(0, 1).toUpperCase()}${text.substring(1)}';
                  },
                ),
                style: ThemeText.body1.copyWith(
                  color: ThemeColor.white,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CategoryDialog extends StatelessWidget {
  const CategoryDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ThemeColor.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildOption(
            onTap: () {
              context.read<JokeCubit>().changeFilter(0);
              Navigator.pop(context);
            },
            leading: SvgPicture.asset('assets/icons/Infinity.svg'),
            title: 'All Jokes',
          ),
          _buildOption(
            onTap: () {
              context.read<JokeCubit>().changeFilter(1);
              Navigator.pop(context);
            },
            leading: SvgPicture.asset('assets/icons/heart.svg'),
            title: 'My Favorites',
          ),
          _buildOption(
            onTap: () async {
              final category = await Navigator.push<CategoryModel>(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryPage(),
                ),
              );
              if (category != null) {
                context.read<JokeCubit>().changeFilter(2, category: category);
              }
              Navigator.pop(context);
            },
            leading: SvgPicture.asset('assets/icons/categories.svg'),
            title: 'Categories',
          ),
        ],
      ),
    );
  }

  Widget _buildOption({
    required VoidCallback onTap,
    required Widget leading,
    required String title,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        child: Row(
          children: [
            leading,
            const SizedBox(width: 16),
            Text(
              title,
              style: ThemeText.body1.copyWith(
                color: ThemeColor.text,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
