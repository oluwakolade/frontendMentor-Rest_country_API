import 'package:rest_api_countries/model/country_model.dart';
import 'package:rest_api_countries/provider/country_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
List<String> uniqueRegions(UniqueRegionsRef ref) {
  final countries = ref.watch(countryProvider).value ?? [];
  return countries.map((country) => country.region).toSet().toList();
}

@riverpod
class SelectedRegion extends _$SelectedRegion {
  @override
  String? build() => null;

  void setRegion(String? region) {
    state = region;
  }
}

@riverpod
class SearchCountry extends _$SearchCountry {
  @override
  String build() => '';

  void updateSearch(String newSearchQuery) {
    state = newSearchQuery;
  }
}

@riverpod
List<Country> filteredCountries(FilteredCountriesRef ref) {
  final searchQuery = ref.watch(searchCountryProvider).toLowerCase();
  final selectedRegion = ref.watch(selectedRegionProvider);
  final asyncCountries = ref.watch(countryProvider);

  return asyncCountries.when(
    data: (countries) {
      return countries.where((country) {
        final matchesRegion =
            selectedRegion == null || country.region == selectedRegion;
        final matchesSearch = country.name.toLowerCase().contains(searchQuery);
        return matchesRegion && matchesSearch;
      }).toList();
    },
    loading: () => [],
    error: (e, _) => [],
  );
}
