import 'package:clean_architecture_example/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture_example/layers/data/dtos/car_dto.dart';
import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';

class GetCarByColorLocalDataSourceImp implements GetCarByColorDataSource {
  final jsonRed = {
    'licensePlate': 'ABC123',
    'amountOfDoors': 4,
    'price': 30000.00,
  };
  final jsonAny = {
    'licensePlate': 'CBA321',
    'amountOfDoors': 2,
    'price': 15000.00,
  };

  @override
  CarDto call(String color) {
    if (color.contains('red')) {
      return CarDto.fromJson(jsonRed);
    } else {
      return CarDto.fromJson(jsonAny);
    }
  }
}
