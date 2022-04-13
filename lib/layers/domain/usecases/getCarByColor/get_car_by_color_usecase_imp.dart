import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase.dart';

abstract class GetCarByColorUseCaseImp implements GetCarByColorUseCase {
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(licensePlate: 'ABC123', amountOfDoors: 4, price: 30.000);
    } else {
      return CarEntity(licensePlate: 'CBA321', amountOfDoors: 2, price: 15.000);
    }
  }
}
