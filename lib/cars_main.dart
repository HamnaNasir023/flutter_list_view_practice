import 'package:flutter/material.dart';
import 'package:flutter_list_view_practice/cars.dart';
import 'package:flutter_list_view_practice/cars_list_view.dart';
import 'package:flutter_list_view_practice/country.dart';
import 'package:flutter_list_view_practice/country_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Cars> cars = [
    Cars(
        carName: "LAMBORGHINI AVENTADOR ROADSTER",
        carCost: "4.8",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgVfcZ3QsxFeeRvLhd7DQ5mSVYO4Vf1AcoLg&s"),
    Cars(
        carName: "BENTLEY MULSANNE",
        carCost: "5.5",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9hAzcBNpO4WCERvBexp4R4-mTQ1brX7kx5w&s"),
    Cars(
        carName: "ROLLS ROYCE GHOST II",
        carCost: "5.6",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKNBESCy9o3amNkO237KYDUsCaUKcAOy4hHw&s"),
    Cars(
        carName: "ROLLS ROYCE PHANTOM",
        carCost: "8.2",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNtDCPWfq_Ve4JqT_ZC7bxiUEboOb6SbrJ-g&s"),
    Cars(
        carName: "MERCEDES-BENZ S600 GUARD",
        carCost: "8.9",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0Nhkum3qqz9f4KANKJfJ9-5teoTG3ZXGG1A&s"),
    Cars(
        carName: "AUDI RS7",
        carCost: "8.8",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuJYnds9SwGSZdyFpcbVqnkMlyozVbo52KTQ&s"),
    Cars(
        carName: "PORSCHE 911 GT3",
        carCost: "7.8",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh4uQjGBAvgKsPeg2nVnMxxxhYP21c_0ip9axRQFTq1WGUjBp8agGSMScgC-DYWChoGAc&usqp=CAU"),
    Cars(
        carName: "MCLAREN 765LT",
        carCost: "9.4",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQhe0suvV9M1XHeuDLsmxLwm6vb4L11xCR0w&s"),
    Cars(
        carName: "BMW M4",
        carCost: "7.3",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBAH1l1MXlg8CIpzSKHj0fs0Gjs6Fll0BCHw&s"),
    Cars(
        carName: "BUGATTI CHIRON",
        carCost: "5.1",
        carImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe9usbw2TYVUx99ZMR-GuNC2lF4tuOsxhttA&s"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(
          child: Text(
            "CARS ",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Center(child: CarsListView(cars: cars)),
    );
  }
}
