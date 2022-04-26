import 'package:clean_architecture_example/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture_example/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

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
  Either<Exception, CarDto> call(String color) {
    try {
      if (color.contains('red')) {
        return Right(CarDto.fromJson(jsonRed));
      } else {
        return Right(CarDto.fromJson(jsonAny));
      }
    } catch (e) {
      return Left(Exception('getCarByColor exception'));
    }
  }
}
