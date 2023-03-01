import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/domain/joke/joke_model.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_table.dart';

part 'joke_dto.freezed.dart';

@freezed
class JokeDto with _$JokeDto {
  factory JokeDto({
    required String id,
    required String value,
  }) = _JokeDto;

  const JokeDto._();

  factory JokeDto.fromJson(Map<String, dynamic> data) {
    return JokeDto(
      id: data['id'] as String,
      value: data['value'] as String,
    );
  }
  factory JokeDto.fromDomain(JokeModel model) {
    return JokeDto(
      id: model.id,
      value: model.value,
    );
  }

  factory JokeDto.fromTable(JokeTable table) {
    return JokeDto(
      id: table.id,
      value: table.value,
    );
  }

  JokeModel get toDomain {
    return JokeModel(
      id: id,
      value: value,
    );
  }

  JokeTable get toTable {
    return JokeTable(
      id: id,
      value: value,
    );
  }
}
