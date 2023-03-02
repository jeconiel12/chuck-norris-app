import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chuck_norris_joke/data/chuck_norris_api/chuck_norris_api.dart';

part 'joke_response.freezed.dart';
part 'joke_response.g.dart';

@freezed
class JokeResponse with _$JokeResponse {
  factory JokeResponse({
    required Joke joke,
  }) = _JokeResponse;

  factory JokeResponse.fromJson(Map<String, dynamic> json) =>
      _$JokeResponseFromJson(json);
}
