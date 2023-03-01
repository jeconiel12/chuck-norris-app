import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit({
    required this.jokeRepository,
  }) : super(FavoriteState.initial());

  final IJokeRepository jokeRepository;

  Future<void> checkIfJokeFavorite(String jokeId) async {
    final result = await jokeRepository.checkIfJokeFavorite(jokeId);
    result.fold(
      (_) => emit(state.copyWith(isError: true, isJokeFavorite: false)),
      (isJokeFavorite) => emit(
        state.copyWith(isError: false, isJokeFavorite: isJokeFavorite),
      ),
    );
  }

  Future<void> toggleFavoriteJoke(JokeModel joke) async {
    if (state.isJokeFavorite) {
      await jokeRepository.deleteFavoriteJoke(joke.id);
    } else {
      await jokeRepository.saveFavoriteJoke(joke);
    }
    await checkIfJokeFavorite(joke.id);
  }
}
