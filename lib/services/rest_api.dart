import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:rest_api_countries/model/country_model.dart';

Future<List<Country>> fetchCountry() async {
  final response = await http.get(Uri.parse("uri"));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return data.map((item) => Country.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load countries');
  }
}
