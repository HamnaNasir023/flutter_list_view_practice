import 'package:flutter/material.dart';
import 'package:flutter_list_view_practice/cars.dart';

class CarListTile extends StatelessWidget {
  const CarListTile({super.key, required this.cars});
  final Cars cars;

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
        hoverColor: const Color.fromARGB(255, 185, 132, 112),
        onTap: () {},
        leading: Image.network(
          cars.carImagePath,
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
        title: Text(
          cars.carName,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Row(
          children: [
            Text(
              "Cost : ",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            ),
            Text(
              cars.carCost,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14),
            ),
            Text(
              " Crore",
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
