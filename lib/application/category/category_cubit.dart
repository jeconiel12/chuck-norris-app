import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:chuck_norris_joke/domain/category/i_category_repository.dart';
import 'package:chuck_norris_joke/domain/core/failure_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final ICategoryRepository categoryRepository;

  CategoryCubit({
    required this.categoryRepository,
  }) : super(CategoryState.initial());

  Future<void> getCategories() async {
    emit(state.copyWith(isLoading: true));
    final result = await categoryRepository.getCategories();
    result.fold(
      (failure) => emit(state.copyWith(
        failureOption: some(failure),
      )),
      (categories) => emit(state.copyWith(
        failureOption: none(),
        categories: categories,
      )),
    );
    emit(state.copyWith(isLoading: false));
  }
}
