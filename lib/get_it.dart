import 'package:get_it/get_it.dart';

import 'package:chuck_norris_joke/application/category/category_cubit.dart';
import 'package:chuck_norris_joke/application/color/color_cubit.dart';
import 'package:chuck_norris_joke/application/joke/favorite/favorite_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_by_category/joke_by_category_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_favorite/joke_favorite_cubit.dart';
import 'package:chuck_norris_joke/application/joke/joke_random/joke_random_cubit.dart';
import 'package:chuck_norris_joke/domain/category/i_category_repository.dart';
import 'package:chuck_norris_joke/domain/color/i_color_repository.dart';
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/infrastructure/category/category_api.dart';
import 'package:chuck_norris_joke/infrastructure/category/category_repository.dart';
import 'package:chuck_norris_joke/infrastructure/color/color_hive.dart';
import 'package:chuck_norris_joke/infrastructure/color/color_repository.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_api.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_hive.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt
    ..registerLazySingleton<JokeApi>(() => const JokeApi())
    ..registerLazySingleton<JokeHive>(() => const JokeHive())
    ..registerLazySingleton<ColorHive>(() => const ColorHive())
    ..registerLazySingleton<CategoryApi>(() => const CategoryApi())
    ..registerLazySingleton<IJokeRepository>(
      () => JokeRepository(jokeApi: getIt(), jokeHive: getIt()),
    )
    ..registerLazySingleton<ICategoryRepository>(
      () => CategoryRepository(categoryApi: getIt()),
    )
    ..registerLazySingleton<IColorRepository>(
      () => ColorRepository(colorHive: getIt()),
    )
    ..registerFactory<JokeCubit>(JokeCubit.new)
    ..registerFactory<JokeRandomCubit>(
      () => JokeRandomCubit(jokeRepository: getIt()),
    )
    ..registerFactory<JokeByCategoryCubit>(
      () => JokeByCategoryCubit(jokeRepository: getIt()),
    )
    ..registerFactory<JokeFavoriteCubit>(
      () => JokeFavoriteCubit(jokeRepository: getIt()),
    )
    ..registerFactory<FavoriteCubit>(
      () => FavoriteCubit(jokeRepository: getIt()),
    )
    ..registerFactory<ColorCubit>(() => ColorCubit(colorRepository: getIt()))
    ..registerFactory<CategoryCubit>(
      () => CategoryCubit(categoryRepository: getIt()),
    );
}
