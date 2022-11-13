import 'package:bloc/bloc.dart';
import 'package:chuck_norris_joke/domain/category/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_state.dart';
part 'joke_cubit.freezed.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(const JokeState.random());

  void changeFilter(int index, {CategoryModel? category}) {
    switch (index) {
      case 0:
        emit(const JokeState.random());
        break;
      case 1:
        emit(const JokeState.favorite());
        break;
      case 2:
        emit(JokeState.category(category: category!));
        break;
    }
  }
}
