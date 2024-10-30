import 'package:flutter/material.dart';
import 'package:rest_api_countries/components/app_bar.dart';
import 'package:rest_api_countries/components/country_details_card.dart';
import 'package:rest_api_countries/constants/text.dart';
import 'package:rest_api_countries/model/country_model.dart';

class CountryDesktopDetails extends StatelessWidget {
  final Country country;
  const CountryDesktopDetails({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    //take to country details
    void onTap(Country country) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CountryDesktopDetails(country: country)),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CountryAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//back button
            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).highlightColor),
                  borderRadius: BorderRadius.circular(5)),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                label: const Header4(text: "Back"),
                icon: Icon(Icons.arrow_back,
                    size: 14, color: Theme.of(context).highlightColor),
              ),
            ),

            //container body
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.network(
                          country.flags,
                          height: MediaQuery.of(context).size.height * 0.6,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            CountryDetailsCard(
                                country: country.name,
                                capital: country.capital,
                                currency: country.currencies,
                                language: country.languages,
                                nativeName: country.nativeName,
                                population: country.population,
                                region: country.region,
                                subregion: country.subregion,
                                topLevelDomain: country.topLevelDomain),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Header3(text: "Border Countries"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(children: [
                                  if (country.borders.isEmpty)
                                    const Header4(text: "No Borders")
                                  else
                                    ...country.borders.map((borderCountry) {
                                      return GestureDetector(
                                        onTap: () => onTap(country),
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 2),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Theme.of(context)
                                                    .highlightColor),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Header4(
                                            text: borderCountry,
                                          ),
                                        ),
                                      );
                                    })
                                ])
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
