import 'dart:convert';

import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<SuperheroResponse?> fechSuperheroInfo(String name) async {
    final response = await http.get(
      Uri.parse(
        "https://superheroapi.com/api/065cc687bcd5f3e29ae3484dbab5f622//search/$name",
      ),
    );
    if (response.statusCode == 200) {
      var decodeJson = jsonDecode(response.body);
      SuperheroResponse superheroResponse = SuperheroResponse.fromJson(
        decodeJson,
      );
      return superheroResponse;
    } else {
      return null;
    }
  }
}
