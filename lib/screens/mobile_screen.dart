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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CountrySearchBar(width: double.infinity),
            CountryFilter(),
            SizedBox(
              height: 20,
            ),
            CountryGrid(
              crossAxisCount: 1,
            )
          ],
        ),
      ),
    );
  }
}
