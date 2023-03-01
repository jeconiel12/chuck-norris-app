import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_model.freezed.dart';

@freezed
class JokeModel with _$JokeModel {
  const factory JokeModel({
    required String id,
    required String value,
  }) = _JokeModel;

  const JokeModel._();

  factory JokeModel.empty() => const JokeModel(id: '', value: '');
}
