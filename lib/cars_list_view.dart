import 'package:flutter/material.dart';
import 'package:flutter_list_view_practice/cars.dart';
import 'package:flutter_list_view_practice/cars_list_tile.dart';


class CarsListView extends StatelessWidget {
  const CarsListView({super.key, required this.cars});
  final List<Cars> cars;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
      itemBuilder: (context, index) =>
          CarListTile(cars: cars[index]),
      itemCount: cars.length,
    );
  }
}
