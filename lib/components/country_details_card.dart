import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rest_api_countries/constants/text.dart';
import 'package:rest_api_countries/model/country_model.dart';

class CountryDetailsCard extends StatelessWidget {
  final String country;

  final String nativeName;
  final int population;
  final String region;
  final String subregion;
  final String capital;
  final String topLevelDomain;
  final String currency;
  final List<Language> language;

  const CountryDetailsCard(
      {super.key,
      required this.country,
      required this.capital,
      required this.currency,
      required this.language,
      required this.nativeName,
      required this.population,
      required this.region,
      required this.subregion,
      required this.topLevelDomain});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //country name
          Header1(text: country),
          const SizedBox(
            height: 10,
          ),

          //country details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //coulmn 1
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardText(label: "Native Name", text: nativeName),
                  const SizedBox(
                    height: 5,
                  ),
                  CardText(
                      label: "Population",
                      text: NumberFormat.decimalPattern().format(population)),
                  const SizedBox(
                    height: 5,
                  ),
                  CardText(label: "Region", text: region),
                  const SizedBox(
                    height: 5,
                  ),
                  CardText(label: "Sub Region", text: subregion),
                  const SizedBox(
                    height: 5,
                  ),
                  CardText(label: "Capital", text: capital)
                ],
              ),

              //column 2
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardText(label: "Top Level Domain ", text: topLevelDomain),
                  const SizedBox(
                    height: 5,
                  ),
                  CardText(label: "Currencies", text: currency),
                  const SizedBox(
                    height: 5,
                  ),
                  CardText(
                    label: "Languages",
                    text: language.map((l) => l.name).join(", "),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
