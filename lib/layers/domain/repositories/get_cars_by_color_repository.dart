import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarByColorRepository {
  //contract that indicates the creation of a car when passing its color
  Either<Exception, CarEntity> call(String color);
}
