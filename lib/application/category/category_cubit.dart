import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/domain.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({
    required this.categoryRepository,
  }) : super(CategoryState.initial());

  final CategoryRepository categoryRepository;

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true));
    final result = await categoryRepository.getCategories();
    result.fold(
      (failure) => emit(
        state.copyWith(
          failureOption: some(failure),
        ),
      ),
      (categories) => emit(
        state.copyWith(
          failureOption: none(),
          categories: categories,
        ),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }
}
