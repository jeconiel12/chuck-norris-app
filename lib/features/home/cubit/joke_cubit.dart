import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'joke_state.dart';
part 'joke_cubit.freezed.dart';

enum JokeType { random, favorite }

@injectable
class JokeCubit extends Cubit<JokeState> {
  JokeCubit() : super(const JokeState.random());

  void changeFilter(JokeType type, {String? category}) {
    switch (type) {
      case JokeType.random:
        emit(JokeState.random(category));
        break;
      case JokeType.favorite:
        emit(const JokeState.favorite());
        break;
    }
  }
}
