// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uniqueRegionsHash() => r'aacd719c4a6b12e9f0ad7647d5c82e4f99f76871';

/// See also [uniqueRegions].
@ProviderFor(uniqueRegions)
final uniqueRegionsProvider = AutoDisposeProvider<List<String>>.internal(
  uniqueRegions,
  name: r'uniqueRegionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$uniqueRegionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UniqueRegionsRef = AutoDisposeProviderRef<List<String>>;
String _$filteredCountriesHash() => r'a70be147cf48b740d0603d0911ff9637f1d3d97d';

/// See also [filteredCountries].
@ProviderFor(filteredCountries)
final filteredCountriesProvider = AutoDisposeProvider<List<Country>>.internal(
  filteredCountries,
  name: r'filteredCountriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FilteredCountriesRef = AutoDisposeProviderRef<List<Country>>;
String _$selectedRegionHash() => r'a7c6a0842067896b03565a4df593d0049452b779';

/// See also [SelectedRegion].
@ProviderFor(SelectedRegion)
final selectedRegionProvider =
    AutoDisposeNotifierProvider<SelectedRegion, String?>.internal(
  SelectedRegion.new,
  name: r'selectedRegionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedRegionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedRegion = AutoDisposeNotifier<String?>;
String _$searchCountryHash() => r'e3a01f1b40ced9825476e2658774d07de5f9fd1e';

/// See also [SearchCountry].
@ProviderFor(SearchCountry)
final searchCountryProvider =
    AutoDisposeNotifierProvider<SearchCountry, String>.internal(
  SearchCountry.new,
  name: r'searchCountryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchCountryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchCountry = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
