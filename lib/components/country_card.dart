import 'package:flutter/material.dart';
import 'package:rest_api_countries/constants/text.dart';

class CountryCard extends StatelessWidget {
  final String imagePath;
  final String countryName;
  final String region;
  final String capital;
  final int population;
  const CountryCard(
      {super.key,
      required this.countryName,
      required this.imagePath,
      required this.capital,
      required this.population,
      required this.region});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  CardText(label: 'Population', text: population.toString()),
                  CardText(label: 'Region', text: region),
                  CardText(label: 'Capital', text: capital),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
