import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:chuck_norris_joke/data/data.dart';

@singleton
class ChuckNorrisApiClient {
  ChuckNorrisApiClient({
    required http.Client httpClient,
  }) : _httpClient = httpClient;

  final http.Client _httpClient;

  @visibleForTesting
  static const String baseUrl = 'api.chucknorris.io';

  Future<Joke> getRandomJoke([String? category]) async {
    final uri = Uri.https(baseUrl, '/jokes/random', {
      if (category != null) 'category': category,
    });

    final response = await _httpClient.get(uri);

    if (response.statusCode != HttpStatus.ok) {
      throw Exception();
    }
    return Joke.fromJson(response.json());
  }

  Future<List<String>> getCategories() async {
    final uri = Uri.https(baseUrl, '/jokes/categories');
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
