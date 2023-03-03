import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'joke_state.dart';
part 'joke_cubit.freezed.dart';

@injectable
class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(const JokeState.random());

  void changeFilter(int index, {String? category}) {
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
