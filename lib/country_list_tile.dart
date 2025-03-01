import 'package:flutter/material.dart';
import 'package:flutter_list_view_practice/country.dart';

class CountryListTile extends StatelessWidget {
  const CountryListTile({super.key, required this.country});
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 70,
      surfaceTintColor: Colors.lightGreen,
      shadowColor: Colors.green,
      child: ListTile(
        minTileHeight: 100,
        minVerticalPadding: 20,
        enableFeedback: true,
        hoverColor: const Color.fromARGB(255, 166, 196, 132),
        onTap: () {},
        leading: Image.network(
          country.countryImagePath,
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
        title: Text(
          country.countryName,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Row(
          children: [
            Text(
              "Population : ",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            ),
            Text(
              country.population,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            ),
            Text(
              "Million",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
