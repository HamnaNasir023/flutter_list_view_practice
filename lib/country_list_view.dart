import 'package:flutter/material.dart';
import 'package:flutter_list_view_practice/country.dart';
import 'package:flutter_list_view_practice/country_list_tile.dart';

class CountryListView extends StatelessWidget {
  const CountryListView({super.key, required this.country});
  final List<Country> country;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
      itemBuilder: (context, index) => CountryListTile(country: country[index]),
      itemCount: country.length,
    );
  }
}
