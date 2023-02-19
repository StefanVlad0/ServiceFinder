import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Country {
  final int id;
  final String name;

  const Country({
    required this.id,
    required this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      id: json['id'],
      name: json['title'],
    );
  }
}

class ResCountries {
  final int count;
  final List<Country>? countries;

  int get getCount {
    return count;
  }

  const ResCountries({
    required this.count,
    required this.countries,
  });

  factory ResCountries.fromJson(Map<String, dynamic> json) {
    List<Country> countryList = [];

    for (int i = 0; i < json['count']; i++) {
      Country c = Country(
          id: json['countries'][i]['id'], name: json['countries'][i]['name']);
      countryList.add(c);
    }
    print(countryList);
    return ResCountries(
      count: json['count'],
      countries: countryList,
    );
  }
}

Future<ResCountries> fetchCountries() async {
  final response = await http
      .get(Uri.parse('https://servicefinder.herokuapp.com/countries/'));

  if (response.statusCode == 200) {
    return ResCountries.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
