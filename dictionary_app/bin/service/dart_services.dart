import 'dart:convert';

import 'package:http/http.dart' as http;

import '../data/dictionary_class.dart';

class DictionaryService {
  final _apiUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
  void getData(String word) async {
    //dictionary fetching and parsing data
    print("fetching response");
    final response = await http.get(Uri.parse('${_apiUrl}${word}'));
    print(" response received");

    if (response.statusCode == 404) {
      throw Exception('Something Went Wrong : Data not Found');
    }

    print("decoding response");
    final Dictionary _dict = Dictionary.fromMap(jsonDecode(response.body));
    print("decoding Completed");

    print(_dict);
  }
}
