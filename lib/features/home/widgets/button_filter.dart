import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:chuck_norris_joke/features/category/category.dart';
import 'package:chuck_norris_joke/features/home/home.dart';
import 'package:chuck_norris_joke/theme/theme.dart';
import 'package:chuck_norris_joke/utils/utils.dart';

class ButtonFilter extends StatelessWidget {
  const ButtonFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final jokeCubit = BlocProvider.of<JokeCubit>(context);
    return GestureDetector(
      onTap: () => showModalBottomSheet<void>(
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
                    return 'Category: ${category.capitalizeFirstLetter()}';
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ThemeColor.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildOption(
            onTap: () {
              context.read<JokeCubit>().changeFilter(JokeType.random);
              Navigator.pop(context);
            },
            leading: SvgPicture.asset('assets/icons/Infinity.svg'),
            title: 'All Jokes',
          ),
          _buildOption(
            onTap: () {
              context.read<JokeCubit>().changeFilter(JokeType.favorite);
              Navigator.pop(context);
            },
            leading: SvgPicture.asset('assets/icons/heart.svg'),
            title: 'My Favorites',
          ),
          _buildOption(
            onTap: () async {
              final category = await Navigator.push<String>(
                context,
                MaterialPageRoute(
                  builder: (context) => const CategoryPage(),
                ),
              );
              if (category != null) {
                // ignore: use_build_context_synchronously
                context
                    .read<JokeCubit>()
                    .changeFilter(JokeType.category, category: category);
              }
              // ignore: use_build_context_synchronously
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
