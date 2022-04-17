import 'package:clean_architecture_example/layers/data/dtos/car_dto.dart';

abstract class GetCarByColorDataSource {
  CarDto call(String color);
}
