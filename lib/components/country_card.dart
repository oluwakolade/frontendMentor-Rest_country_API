import 'package:flutter/material.dart';
import 'package:rest_api_countries/constants/text.dart';
import 'package:intl/intl.dart';

class CountryCard extends StatelessWidget {
  final String imagePath;
  final String countryName;
  final String region;
  final String capital;
  final int population;
  final void Function()? onTap;
  const CountryCard(
      {super.key,
      required this.countryName,
      required this.imagePath,
      required this.capital,
      required this.population,
      required this.region,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GridTile(
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10)),
          child: LayoutBuilder(builder: (context, constraints) {
            final imageHeight = constraints.maxHeight * 0.5;
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: imagePath.startsWith('http')
                      ? Image.network(
                          imagePath,
                          width: double.infinity,
                          height: imageHeight,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.broken_image, size: 80);
                          },
                        )
                      : Text(
                          imagePath,
                          style:
                              const TextStyle(fontSize: 40), // For flag emoji
                        ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Header2(text: countryName),
                      const SizedBox(
                        height: 10,
                      ),
                      CardText(
                          label: 'Population',
                          text:
                              NumberFormat.decimalPattern().format(population)),
                      const SizedBox(
                        height: 5,
                      ),
                      CardText(label: 'Region', text: region),
                      const SizedBox(
                        height: 5,
                      ),
                      CardText(label: 'Capital', text: capital),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
