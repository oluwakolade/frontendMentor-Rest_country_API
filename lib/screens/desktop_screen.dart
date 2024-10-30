import 'package:flutter/material.dart';
import 'package:rest_api_countries/components/app_bar.dart';
import 'package:rest_api_countries/components/country_grid.dart';
import 'package:rest_api_countries/components/filter_button.dart';
import 'package:rest_api_countries/components/search_bar.dart';

class CountryDesktopScreen extends StatelessWidget {
  const CountryDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CountryAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CountrySearchBar(
                    width: MediaQuery.of(context).size.width * 0.3),
                const Expanded(child: SizedBox()),
                const CountryFilter()
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CountryGrid()
          ],
        ),
      ),
    );
  }
}
