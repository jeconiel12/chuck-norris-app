import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_favorite_state.dart';
part 'joke_favorite_cubit.freezed.dart';

class JokeFavoriteCubit extends Cubit<JokeFavoriteState> {
  final IJokeRepository jokeRepository;

  JokeFavoriteCubit({
    required this.jokeRepository,
  }) : super(JokeFavoriteState.initial());

  Future<void> getFavoriteJokes() async {
    final response = await jokeRepository.getFavoriteJokes();
    response.fold(
      (failure) => emit(state.copyWith(
        failureOption: some(failure),
        jokes: [],
      )),
      (jokes) => emit(state.copyWith(
        failureOption: none(),
        jokes: jokes,
      )),
    );
  }

  Future<void> deleteFavoriteJoke(String jokeId) async {
    jokeRepository.deleteFavoriteJoke(jokeId);
    getFavoriteJokes();
  }
}
