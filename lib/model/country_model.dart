class Country {
  final String name;
  final String capital;
  final String region;
  final int population;
  final String nativeName;
  final String subregion;
  final String topLevelDomain;
  final List<String> borders;
  final Flags flags;
  final List<Currency> currencies;
  final List<Language> languages;

  const Country(
      {required this.name,
      required this.capital,
      required this.region,
      required this.population,
      required this.nativeName,
      required this.borders,
      required this.currencies,
      required this.languages,
      required this.subregion,
      required this.topLevelDomain,
      required this.flags});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      capital: json['capital'],
      region: (json['region'] as num).toString(),
      population: json['population'],
      nativeName: json['nativeName'],
      subregion: json['subregion'],
      topLevelDomain: json['topLevelDomian'],
      borders: List<String>.from(json['borders']),
      flags: Flags.fromJson(json['flags']),
      currencies: (json['currencies'] as List)
          .map((currency) => Currency.fromJson(currency))
          .toList(),
      languages: (json['languages'] as List)
          .map((language) => Language.fromJson(language))
          .toList(),
    );
  }
}

class Flags {
  final String png;

  Flags({required this.png});

  factory Flags.fromJson(Map<String, dynamic> json) {
    return Flags(png: json['png']);
  }
}

class Currency {
  final String code;
  final String name;
  final String symbol;

  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      code: json['code'],
      name: json['name'],
      symbol: json['symbol'],
    );
  }
}

class Language {
  final String name;

  Language({
    required this.name,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      name: json['name'],
    );
  }
}
