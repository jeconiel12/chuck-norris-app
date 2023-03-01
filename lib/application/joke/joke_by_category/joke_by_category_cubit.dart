import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:chuck_norris_joke/domain/joke/i_joke_repository.dart';
import 'package:chuck_norris_joke/domain/joke/joke_model.dart';

part 'joke_by_category_state.dart';
part 'joke_by_category_cubit.freezed.dart';

class JokeByCategoryCubit extends Cubit<JokeByCategoryState> {
  JokeByCategoryCubit({
    required this.jokeRepository,
  }) : super(JokeByCategoryState.initial());

  final IJokeRepository jokeRepository;

  Future<void> getJokeByCategory(CategoryModel category) async {
    emit(state.copyWith(isLoading: true));
    final response = await jokeRepository.getJokeByCategory(category.value);
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
