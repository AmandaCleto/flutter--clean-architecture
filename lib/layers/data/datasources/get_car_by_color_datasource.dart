import 'package:clean_architecture_example/layers/data/dtos/car_dto.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarByColorDataSource {
  Either<Exception, CarDto> call(String color);
}
