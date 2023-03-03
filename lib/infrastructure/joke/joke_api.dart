import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/domain/joke/joke_model.dart';
import 'package:chuck_norris_joke/infrastructure/joke/joke_dto.dart';

@lazySingleton
class JokeApi {
  const JokeApi();

  static const String _baseUrl = 'https://api.chucknorris.io/jokes';

  Future<JokeModel> getRandomJoke() async {
    final url = Uri.parse('$_baseUrl/random');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return JokeDto.fromJson(data).toDomain;
    } else {
      throw Exception();
    }
  }

  Future<JokeModel> getJokeByCategory(String category) async {
    final url = Uri.parse('$_baseUrl/random?category=$category');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as Map<String, dynamic>;
      return JokeDto.fromJson(data).toDomain;
    } else {
      throw Exception();
    }
  }
}
