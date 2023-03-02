import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

@freezed
class Joke with _$Joke {
  @HiveType(typeId: 0)
  factory Joke({
    @HiveField(0) required String id,
    @HiveField(1) required String value,
  }) = _Joke;

  factory Joke.empty() => Joke(id: '', value: '');

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
