import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarByColorUseCase {
  //contract that indicates the creation of a car when passing its color

  //Right: Success
  //Left: Fail
  Either<Exception, CarEntity> call(String color);
}
