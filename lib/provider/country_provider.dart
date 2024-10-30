import 'package:rest_api_countries/model/country_model.dart';
import 'package:rest_api_countries/services/rest_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_provider.g.dart';

@riverpod
Future<List<Country>> country(ref) async {
  return await fetchCountry();
}
