import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rest_api_countries/model/country_model.dart';

Future<List<Country>> fetchCountry() async {
  try {
    final response =
        await http.get(Uri.parse("https://restcountries.com/v3.1/all"));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);

      return data.map((item) {
        return Country.fromJson(item);
      }).toList();
    } else {
      throw Exception('Failed to load countries');
    }
  } catch (e) {
    print('Error fetching countries: $e'); // Print any errors
    throw e; // Rethrow the error to be handled upstream
  }
}
