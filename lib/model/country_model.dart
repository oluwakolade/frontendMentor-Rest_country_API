class Country {
  final String name;
  final String capital;
  final String region;
  final int population;
  final String nativeName;
  final String subregion;
  final String topLevelDomain;
  final List<String> borders;
  final String flags;
  final String currencies;
  final List<Language> languages;

  const Country({
    required this.name,
    required this.capital,
    required this.region,
    required this.population,
    required this.nativeName,
    required this.borders,
    required this.currencies,
    required this.languages,
    required this.subregion,
    required this.topLevelDomain,
    required this.flags,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    // Extracting the `nativeName` value
    String nativeName = 'Unknown';
    if (json['name']['nativeName'] != null) {
      var nativeNameData = json['name']['nativeName'];
      if (nativeNameData is Map && nativeNameData.isNotEmpty) {
        nativeName = nativeNameData.entries.first.value['common'] ?? 'Unknown';
      }
    }
//flag
    String flag = '';
    if (json['flags'] is Map<String, dynamic> &&
        json['flags']['png'] is String) {
      flag = json['flags']['png'] as String;
    } else {
      flag = 'Unknown';
    }

    //language
    List<Language> languageList = (json['languages'] != null)
        ? (json['languages'] as Map<String, dynamic>)
            .entries
            .map((entry) =>
                Language(code: entry.key, name: entry.value as String))
            .toList()
        : [];

    //currency
    // Extracting the first currency code
    String currency = 'Unknown';
    if (json['currencies'] != null &&
        json['currencies'] is Map<String, dynamic>) {
      var currenciesMap = json['currencies'] as Map<String, dynamic>;
      // Get the first currency key (code)
      currency = currenciesMap
          .keys.first; // This will get the first currency key, e.g., "HUF"
    }

    return Country(
        name: json['name']['common'] as String,
        capital: json['capital'] != null && json['capital'].isNotEmpty
            ? json['capital'][0]
            : 'Unknown',
        region: json['region'] as String,
        population: json['population'] as int,
        nativeName: nativeName,
        subregion: json['subregion'] ?? 'Unknown',
        topLevelDomain: (json['tld'] != null && json['tld'].isNotEmpty)
            ? json['tld'][0]
            : 'Unknown',
        borders:
            (json['borders'] != null) ? List<String>.from(json['borders']) : [],
        flags: flag,
        currencies: currency,
        languages: languageList);
  }
}

// class Currency {
//   final String name;

//   Currency({required this.name });

//   factory Currency.fromJson(Map<String, dynamic> json) {
//     return Currency(
//       name: json['name'] as String,
//     );
//   }
// }

class Language {
  final String code;
  final String name;

  Language({required this.code, required this.name});
}
