// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chuck_norris_joke/data/chuck_norris_api/src/chuck_norris_api_client.dart'
    as _i10;
import 'package:chuck_norris_joke/data/color_local_storage/src/color_local_storage.dart'
    as _i6;
import 'package:chuck_norris_joke/data/data.dart' as _i4;
import 'package:chuck_norris_joke/data/joke_local_storage/src/joke_local_storage.dart'
    as _i9;
import 'package:chuck_norris_joke/di/modules/box.module.dart' as _i20;
import 'package:chuck_norris_joke/di/modules/http.module.dart' as _i19;
import 'package:chuck_norris_joke/domain/category/category_repository.dart'
    as _i15;
import 'package:chuck_norris_joke/domain/color/color_repository.dart' as _i7;
import 'package:chuck_norris_joke/domain/domain.dart' as _i12;
import 'package:chuck_norris_joke/domain/joke/joke_repository.dart' as _i13;
import 'package:chuck_norris_joke/features/category/cubit/category_cubit.dart'
    as _i18;
import 'package:chuck_norris_joke/features/color/cubit/color_cubit.dart'
    as _i11;
import 'package:chuck_norris_joke/features/favorite/cubit/favorite_cubit.dart'
    as _i16;
import 'package:chuck_norris_joke/features/favorite_jokes/cubit/favorite_jokes_cubit.dart'
    as _i17;
import 'package:chuck_norris_joke/features/home/cubit/joke_cubit.dart' as _i8;
import 'package:chuck_norris_joke/features/random_joke/cubit/random_joke_cubit.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final boxModule = _$BoxModule();
    final httpModule = _$HttpModule();
    await gh.lazySingletonAsync<_i3.Box<int>>(
      () => boxModule.colorBox,
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i3.Box<_i4.Joke>>(
      () => boxModule.jokeBox,
      preResolve: true,
    );
    gh.lazySingleton<_i5.Client>(() => httpModule.client);
    gh.lazySingleton<_i6.ColorLocalStorage>(
        () => _i6.ColorLocalStorage(colorBox: gh<_i3.Box<int>>()));
    gh.lazySingleton<_i7.ColorRepository>(
        () => _i7.ColorRepository(colorLocal: gh<_i4.ColorLocalStorage>()));
    gh.factory<_i8.JokeCubit>(() => _i8.JokeCubit());
    gh.lazySingleton<_i9.JokeLocalStorage>(
        () => _i9.JokeLocalStorage(jokeBox: gh<_i3.Box<_i4.Joke>>()));
    gh.singleton<_i10.ChuckNorrisApiClient>(
        _i10.ChuckNorrisApiClient(httpClient: gh<_i5.Client>()));
    gh.factory<_i11.ColorCubit>(
        () => _i11.ColorCubit(colorRepository: gh<_i12.ColorRepository>()));
    gh.lazySingleton<_i13.JokeRepository>(() => _i13.JokeRepository(
          jokeApi: gh<_i4.ChuckNorrisApiClient>(),
          jokeLocal: gh<_i4.JokeLocalStorage>(),
        ));
    gh.factory<_i14.RandomJokeCubit>(
        () => _i14.RandomJokeCubit(jokeRepository: gh<_i12.JokeRepository>()));
    gh.lazySingleton<_i15.CategoryRepository>(
        () => _i15.CategoryRepository(jokeApi: gh<_i4.ChuckNorrisApiClient>()));
    gh.factory<_i16.FavoriteCubit>(
        () => _i16.FavoriteCubit(jokeRepository: gh<_i12.JokeRepository>()));
    gh.factory<_i17.FavoriteJokesCubit>(() =>
        _i17.FavoriteJokesCubit(jokeRepository: gh<_i12.JokeRepository>()));
    gh.factory<_i18.CategoryCubit>(() =>
        _i18.CategoryCubit(categoryRepository: gh<_i12.CategoryRepository>()));
    return this;
  }
}

class _$HttpModule extends _i19.HttpModule {}

class _$BoxModule extends _i20.BoxModule {}
