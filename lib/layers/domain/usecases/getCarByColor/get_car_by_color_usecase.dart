import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';

abstract class GetCarByColorUseCase {
  //contract
  CarEntity call(String color);
}
