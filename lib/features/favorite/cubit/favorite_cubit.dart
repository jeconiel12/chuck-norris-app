import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

@injectable
class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({
    required this.jokeRepository,
  }) : super(FavoriteState.initial());

  final JokeRepository jokeRepository;

  Future<void> checkIfJokeFavorite(String jokeId) async {
    final result = await jokeRepository.checkIfJokeFavorite(jokeId);
    result.fold(
      (_) => emit(state.copyWith(isError: true, isJokeFavorite: false)),
      (isJokeFavorite) => emit(
        state.copyWith(isError: false, isJokeFavorite: isJokeFavorite),
      ),
    );
  }

  Future<void> toggleFavoriteJoke(Joke joke) async {
    if (state.isJokeFavorite) {
      await jokeRepository.deleteFavoriteJoke(joke.id);
    } else {
      await jokeRepository.saveFavoriteJoke(joke);
    }
    await checkIfJokeFavorite(joke.id);
  }
}
