import 'package:flutter/material.dart';
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
  final List<Country> country = [
    Country(
        countryName: "Lahore , Pakistan",
        population: "8.0",
        countryImagePath:
            "https://images.unsplash.com/photo-1622546758596-f1f06ba11f58?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFob3JlfGVufDB8fDB8fHww"),
    Country(
        countryName: "New York , USA",
        population: "9.5",
        countryImagePath:
            "https://plus.unsplash.com/premium_photo-1672082422409-879d79636902?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmV3JTIweW9ya3xlbnwwfHwwfHx8MA%3D%3D"),
    Country(
        countryName: "Dehli , India ",
        population: "9.0",
        countryImagePath:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Delhi_Red_fort.jpg/220px-Delhi_Red_fort.jpg"),
    Country(
        countryName: "Ottawa , Canada ",
        population: "7.8",
        countryImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB7Y_jKUIHppuq-YvT1ISjSAbUeDHIOX4PiGB073iDi8sW9VtxHz2qGnO9-bYckbb7Yg&usqp=CAU"),
    Country(
        countryName: "London, England",
        population: "9.6",
        countryImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-gKFa87UUk-5O5aPV89Spy2p1UX7nyAhr6g&s"),
    Country(
        countryName: "Istanbul , Turkey",
        population: "9.9",
        countryImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_l0pzPr12wGuT6BM0wp6ECkdiXweb-eJO3g&s"),
    Country(
        countryName: "Paris , France",
        population: "6.8",
        countryImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrGJ1IHfbX3CMLV4qpi-oOCEt1F7AfwWT-Jw&s"),
    Country(
        countryName: "Berilin , Germany",
        population: "3.7",
        countryImagePath:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIdmT5TOQ7XfVFJgs9kmI9f66AEvla-18J6A&s"),
    Country(
        countryName: "Canberra , Austaila",
        population: "5.6",
        countryImagePath:
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQX1_gN3KZ4SjRY-GYw49UeMq78C7ZNXZzTeFj_Wg63I5VXgPtHhi6CTcNpGy1z9FjuekaaluCch17a_xhzvttrx4C4vx1tZw"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text(
            "Cities Around World ",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
      body: Center(
        child: CountryListView(country: country),
      ),
    );
  }
}
