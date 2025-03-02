// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cars {
  final String carName;
  final String carCost;
  final String carImagePath;
  Cars({
    required this.carName,
    required this.carCost,
    required this.carImagePath,
  });
  

  Cars copyWith({
    String? carName,
    String? cost,
    String? carImagePath,
  }) {
    return Cars(
      carName: carName ?? this.carName,
      carCost: cost ?? this.carCost,
      carImagePath: carImagePath ?? this.carImagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carName': carName,
      'cost': carCost,
      'carImagePath': carImagePath,
    };
  }

  factory Cars.fromMap(Map<String, dynamic> map) {
    return Cars(
      carName: map['carName'] as String,
      carCost: map['cost'] as String,
      carImagePath: map['carImagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cars.fromJson(String source) => Cars.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Cars(carName: $carName, cost: $carCost, carImagePath: $carImagePath)';

  @override
  bool operator ==(covariant Cars other) {
    if (identical(this, other)) return true;
  
    return 
      other.carName == carName &&
      other.carCost == carCost &&
      other.carImagePath == carImagePath;
  }

  @override
  int get hashCode => carName.hashCode ^ carCost.hashCode ^ carImagePath.hashCode;
}
