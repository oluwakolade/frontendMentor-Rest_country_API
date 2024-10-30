import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rest_api_countries/components/country_card.dart';
import 'package:rest_api_countries/model/country_model.dart';
import 'package:rest_api_countries/provider/search_provider.dart';
import 'package:rest_api_countries/screens/country_details.dart';
import 'package:rest_api_countries/screens/country_details_mobile.dart';

class CountryGrid extends ConsumerWidget {
  final int crossAxisCount;

  const CountryGrid({super.key, this.crossAxisCount = 4});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredCountries = ref.watch(filteredCountriesProvider);

    //take to country details
    void onTap(Country country) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  return CountryMobileDetails(country: country);
                } else {
                  return CountryDesktopDetails(country: country);
                }
              },
            );
          },
        ),
      );
    }

    return Expanded(
      child: filteredCountries.isEmpty
          ? const Center(child: Text("No countries found"))
          : GridView.builder(
              itemCount: filteredCountries.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                final country = filteredCountries[index];

                return CountryCard(
                  countryName: country.name,
                  imagePath: country.flags,
                  capital: country.capital,
                  population: country.population,
                  region: country.region,
                  onTap: () => onTap(country),
                );
              },
            ),
    );
  }
}



// class CountryGrid extends ConsumerStatefulWidget {
//   final int crossAxisCount;

//   const CountryGrid({super.key, required this.crossAxisCount});

//   @override
//   ConsumerState<CountryGrid> createState() => _CountryGridState();
// }

// class _CountryGridState extends ConsumerState<CountryGrid> {
//   @override