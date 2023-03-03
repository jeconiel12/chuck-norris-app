// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chuck_norris_joke/application/category/category_cubit.dart'
    as _i12;
import 'package:chuck_norris_joke/application/color/color_cubit.dart' as _i13;
import 'package:chuck_norris_joke/application/joke/favorite/favorite_cubit.dart'
    as _i19;
import 'package:chuck_norris_joke/application/joke/joke_by_category/joke_by_category_cubit.dart'
    as _i16;
import 'package:chuck_norris_joke/application/joke/joke_cubit.dart' as _i10;
import 'package:chuck_norris_joke/application/joke/joke_favorite/joke_favorite_cubit.dart'
    as _i17;
import 'package:chuck_norris_joke/application/joke/joke_random/joke_random_cubit.dart'
    as _i18;
import 'package:chuck_norris_joke/domain/category/i_category_repository.dart'
    as _i5;
import 'package:chuck_norris_joke/domain/color/i_color_repository.dart' as _i7;
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart' as _i14;
import 'package:chuck_norris_joke/infrastructure/category/category_api.dart'
    as _i3;
import 'package:chuck_norris_joke/infrastructure/category/category_repository.dart'
    as _i6;
import 'package:chuck_norris_joke/infrastructure/color/color_hive.dart' as _i4;
import 'package:chuck_norris_joke/infrastructure/color/color_repository.dart'
    as _i8;
import 'package:chuck_norris_joke/infrastructure/joke/joke_api.dart' as _i9;
import 'package:chuck_norris_joke/infrastructure/joke/joke_hive.dart' as _i11;
import 'package:chuck_norris_joke/infrastructure/joke/joke_repository.dart'
    as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CategoryApi>(() => _i3.CategoryApi());
    gh.lazySingleton<_i4.ColorHive>(() => _i4.ColorHive());
    gh.lazySingleton<_i5.ICategoryRepository>(
        () => _i6.CategoryRepository(categoryApi: gh<_i3.CategoryApi>()));
    gh.lazySingleton<_i7.IColorRepository>(
        () => _i8.ColorRepository(colorHive: gh<_i4.ColorHive>()));
    gh.lazySingleton<_i9.JokeApi>(() => _i9.JokeApi());
    gh.factory<_i10.JokeCubit>(() => _i10.JokeCubit());
    gh.lazySingleton<_i11.JokeHive>(() => _i11.JokeHive());
    gh.factory<_i12.CategoryCubit>(() =>
        _i12.CategoryCubit(categoryRepository: gh<_i5.ICategoryRepository>()));
    gh.factory<_i13.ColorCubit>(
        () => _i13.ColorCubit(colorRepository: gh<_i7.IColorRepository>()));
    gh.lazySingleton<_i14.IJokeRepository>(() => _i15.JokeRepository(
          jokeApi: gh<_i9.JokeApi>(),
          jokeHive: gh<_i11.JokeHive>(),
        ));
    gh.factory<_i16.JokeByCategoryCubit>(() =>
        _i16.JokeByCategoryCubit(jokeRepository: gh<_i14.IJokeRepository>()));
    gh.factory<_i17.JokeFavoriteCubit>(() =>
        _i17.JokeFavoriteCubit(jokeRepository: gh<_i14.IJokeRepository>()));
    gh.factory<_i18.JokeRandomCubit>(
        () => _i18.JokeRandomCubit(jokeRepository: gh<_i14.IJokeRepository>()));
    gh.factory<_i19.FavoriteCubit>(
        () => _i19.FavoriteCubit(jokeRepository: gh<_i14.IJokeRepository>()));
    return this;
  }
}
