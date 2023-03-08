import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:chuck_norris_joke/di/injection.dart';
import 'package:chuck_norris_joke/features/category/category.dart';
import 'package:chuck_norris_joke/theme/theme.dart';

part 'parts/category_error.dart';
part 'parts/category_grid.dart';
part 'parts/category_loading.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CategoryCubit>()..getCategories(),
      child: const CategoryView(),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        title: const Text('Category', style: ThemeText.header6),
        foregroundColor: ThemeColor.text,
      ),
      body: SafeArea(
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const CategoryLoading();
            } else if (state.failureOption.isSome()) {
              return const CategoryError();
            } else {
              return CategoryGrid(categories: state.categories);
            }
          },
        ),
      ),
    );
  }
}
