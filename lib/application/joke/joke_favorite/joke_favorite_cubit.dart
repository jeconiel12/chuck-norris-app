import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';
import 'package:chuck_norris_joke/domain/domain.dart';

part 'joke_favorite_state.dart';
part 'joke_favorite_cubit.freezed.dart';

@injectable
class JokeFavoriteCubit extends Cubit<JokeFavoriteState> {
  JokeFavoriteCubit({
    required this.jokeRepository,
  }) : super(JokeFavoriteState.initial());

  final JokeRepository jokeRepository;

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
