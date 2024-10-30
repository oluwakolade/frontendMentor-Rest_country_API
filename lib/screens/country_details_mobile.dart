import 'package:flutter/material.dart';
import 'package:rest_api_countries/components/app_bar.dart';
import 'package:rest_api_countries/components/country_details_card_mobile.dart';
import 'package:rest_api_countries/constants/text.dart';
import 'package:rest_api_countries/model/country_model.dart';

class CountryMobileDetails extends StatelessWidget {
  final Country country;
  const CountryMobileDetails({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    //take to country details
    void onTap(Country country) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CountryMobileDetails(country: country)),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CountryAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                height: 20,
              ),
              Center(
                child: Container(
                  child: Image.network(
                    country.flags,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                // margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CountryDetailsCardMobile(
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
                    const Header3(text: "Border Countries"),
                    const SizedBox(
                      height: 10,
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
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Theme.of(context).highlightColor),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Header4(
                                text: borderCountry,
                              ),
                            ),
                          );
                        })
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
