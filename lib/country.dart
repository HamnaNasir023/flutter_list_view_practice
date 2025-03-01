import 'dart:convert';

class Country {
  final String countryName;
  final String population;
  final String countryImagePath;
  Country({
    required this.countryName,
    required this.population,
    required this.countryImagePath,
  });

  Country copyWith({
    String? countryName,
    String? population,
    String? cityImagePath,
  }) {
    return Country(
      countryName: countryName ?? this.countryName,
      population: population ?? this.population,
      countryImagePath: cityImagePath ?? this.countryImagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryName': countryName,
      'population': population,
      'cityImagePath': countryImagePath,
    };
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      countryName: map['countryName'] as String,
      population: map['population'] as String,
      countryImagePath: map['cityImagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Cities( countryName: $countryName, population: $population, cityImagePath: $countryImagePath)';
  }

  @override
  bool operator ==(covariant Country other) {
    if (identical(this, other)) return true;

    return other.countryName == countryName &&
        other.population == population &&
        other.countryImagePath == countryImagePath;
  }

  @override
  int get hashCode {
    return countryName.hashCode ^
        population.hashCode ^
        countryImagePath.hashCode;
  }
}
