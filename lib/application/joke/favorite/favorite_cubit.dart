import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final IJokeRepository jokeRepository;

  FavoriteCubit({
    required this.jokeRepository,
  }) : super(FavoriteState.initial());

  Future<void> checkIfJokeFavorite(String jokeId) async {
    final result = await jokeRepository.checkIfJokeFavorite(jokeId);
    result.fold(
      (_) => emit(state.copyWith(isError: true, isJokeFavorite: false)),
      (isJokeFavorite) => emit(state.copyWith(isError: false, isJokeFavorite: isJokeFavorite)),
    );
  }

  Future<void> toggleFavoriteJoke(JokeModel joke) async {
    if (state.isJokeFavorite) {
      await jokeRepository.deleteFavoriteJoke(joke.id);
    } else {
      await jokeRepository.saveFavoriteJoke(joke);
    }
    checkIfJokeFavorite(joke.id);
  }
}
