import 'package:flutter/material.dart';
import 'package:rest_api_countries/components/app_bar.dart';
import 'package:rest_api_countries/components/country_grid.dart';
import 'package:rest_api_countries/components/filter_button.dart';
import 'package:rest_api_countries/components/search_bar.dart';

class CountryMobileScreen extends StatelessWidget {
  const CountryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CountryAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CountrySearchBar(width: MediaQuery.of(context).size.width),
            const CountryFilter(),
            const SizedBox(
              height: 20,
            ),
            const CountryGrid(
              crossAxisCount: 1,
            )
          ],
        ),
      ),
    );
  }
}
