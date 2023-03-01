import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';

part 'joke_favorite_state.dart';
part 'joke_favorite_cubit.freezed.dart';

class JokeFavoriteCubit extends Cubit<JokeFavoriteState> {
  JokeFavoriteCubit({
    required this.jokeRepository,
  }) : super(JokeFavoriteState.initial());

  final IJokeRepository jokeRepository;

  Future<void> getFavoriteJokes() async {
    final response = await jokeRepository.getFavoriteJokes();
    response.fold(
      (failure) => emit(
        state.copyWith(
          failureOption: some(failure),
          jokes: [],
        ),
      ),
      (jokes) => emit(
        state.copyWith(
          failureOption: none(),
          jokes: jokes,
        ),
      ),
    );
  }

  Future<void> deleteFavoriteJoke(String jokeId) async {
    await jokeRepository.deleteFavoriteJoke(jokeId);
    await getFavoriteJokes();
  }
}
