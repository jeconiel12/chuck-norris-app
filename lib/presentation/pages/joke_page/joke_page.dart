import 'package:chuck_norris_joke/application/color/color_cubit.dart';
import 'package:chuck_norris_joke/application/joke/favorite/favorite_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_by_category/joke_by_category_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_favorite/joke_favorite_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_random/joke_random_cubit.dart';
import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';
import 'package:chuck_norris_joke/get_it.dart';
import 'package:chuck_norris_joke/presentation/helper/share_screenshot.dart';
import 'package:chuck_norris_joke/presentation/pages/category_page/category_page.dart';
import 'package:chuck_norris_joke/presentation/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widgets/button_color.dart';
part 'widgets/button_delete.dart';
part 'widgets/button_favorite.dart';
part 'widgets/button_filter.dart';
part 'widgets/button_share.dart';
part 'widgets/joke_background.dart';
part 'widgets/joke_error_message.dart';
part 'widgets/joke_refresh_indicator.dart';
part 'widgets/joke_spinner.dart';
part 'widgets/joke_value_text.dart';

part 'joke_all.dart';
part 'joke_by_category.dart';
part 'joke_favorites.dart';

class JokePage extends StatefulWidget {
  const JokePage({
    Key? key,
  }) : super(key: key);

  @override
  State<JokePage> createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  final JokeCubit _jokeCubit = getIt<JokeCubit>();
  final ColorCubit _colorCubit = getIt<ColorCubit>();

  @override
  void initState() {
    super.initState();
    _colorCubit.getColor();
  }

  @override
  void dispose() {
    _colorCubit.close();
    _jokeCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => _jokeCubit),
          BlocProvider(create: (context) => _colorCubit),
        ],
        child: Stack(
          children: [
            const JokeBackground(),
            BlocBuilder<JokeCubit, JokeState>(
              buildWhen: (p, c) => p != c,
              builder: (context, state) {
                return state.when(
                  random: () => const JokeAll(),
                  category: (category) => JokeByCategory(category: category),
                  favorite: () => const JokeFavorites(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
