import 'dart:io';

import 'package:dictionary_app/dictionary_app.dart' as dictionary_app;

import 'service/dart_services.dart';

// sary API fetching Files alag rahengy
//or network related sab alag rkhngy
void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Missing arguments");
    exit(1);
  }
  //TODO : call service function with arguments
  final DictionaryService _dictionaryserv = DictionaryService();
  _dictionaryserv.getData(arguments.first);
}
