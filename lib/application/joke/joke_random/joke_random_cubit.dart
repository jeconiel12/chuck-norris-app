import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';

part 'joke_random_state.dart';
part 'joke_random_cubit.freezed.dart';

class JokeRandomCubit extends Cubit<JokeRandomState> {
  JokeRandomCubit({
    required this.jokeRepository,
  }) : super(JokeRandomState.initial());
  final IJokeRepository jokeRepository;

  Future<void> getRandomJoke() async {
    emit(state.copyWith(isLoading: true));
    final response = await jokeRepository.getRandomJoke();
    response.fold(
      (failure) => emit(
        state.copyWith(
          failureOption: some(failure),
          joke: JokeModel.empty(),
        ),
      ),
      (joke) => emit(
        state.copyWith(
          failureOption: none(),
          joke: joke,
        ),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }
}
