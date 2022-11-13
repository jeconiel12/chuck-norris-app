import 'package:chuck_norris_joke/application/category/category_cubit.dart';
import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/get_it.dart';
import 'package:chuck_norris_joke/presentation/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widget/category_body.dart';
part 'widget/category_error.dart';
part 'widget/category_grid.dart';
part 'widget/category_header.dart';
part 'widget/category_loading.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final CategoryCubit _categoryCubit = getIt<CategoryCubit>();

  @override
  void initState() {
    _categoryCubit.getCategories();
    super.initState();
  }

  @override
  void dispose() {
    _categoryCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _categoryCubit,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                _CategoryHeader(),
                _CategoryBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
