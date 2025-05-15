import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LanguageProvider with ChangeNotifier {
  Locale _locale = Locale('en'); 
  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  Future<void> updateLanguageOnServer(String langCode) async {
    try {
      var url = Uri.parse("https://your-api.com/language/update");
      var response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"language": langCode}),
      );

      if (response.statusCode == 200) {
        print("Language updated successfully");
      } else {
        print("Failed to update language");
      }
    } catch (error) {
      print("Error updating language: $error");
    }
  }
}
