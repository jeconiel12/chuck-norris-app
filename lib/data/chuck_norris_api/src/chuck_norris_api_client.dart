import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

import 'package:chuck_norris_joke/data/chuck_norris_api/chuck_norris_api.dart';

class ChuckNorrisApiClient {
  ChuckNorrisApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  @visibleForTesting
  static const String baseUrl = 'https://api.chucknorris.io/jokes';

  Future<JokeResponse> getRandomJoke() async {
    final uri = Uri.parse('$baseUrl/random');
    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }

    return JokeResponse.fromJson(response.json());
  }

  Future<JokeResponse> getJokeByCategory(String category) async {
    final uri = Uri.parse('$baseUrl/random?category=$category');
    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }

    return JokeResponse.fromJson(response.json());
  }

  Future<List<String>> getCategories() async {
    final uri = Uri.parse('$baseUrl/categories');
    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }

    final responseBody = jsonDecode(response.body) as List;

    return responseBody.map((category) => category as String).toList();
  }
}

extension on http.Response {
  Map<String, dynamic> json() {
    return jsonDecode(body) as Map<String, dynamic>;
  }
}
