import 'package:rest_api_countries/model/country_model.dart';
import 'package:rest_api_countries/services/rest_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
Future<List<CountryModel>> countries(ref) async {
  return await fetchCountryModel();
}
