import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarsByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(licensePlate: 'ABC123', amountOfDoors: 4, price: 30.000);
    } else {
      return CarEntity(licensePlate: 'CBA321', amountOfDoors: 2, price: 15.000);
    }
  }
}

void main() {
  test('should return an instance of car when I pass any color', () {
    GetCarByColorUseCase useCase =
        GetCarByColorUseCaseImp(GetCarsByColorRepositoryImp());

    var result = useCase('blue');

    expect(result, isInstanceOf<CarEntity>());
  });
  test('should return a car with four doors when its color is red', () {
    GetCarByColorUseCase useCase =
        GetCarByColorUseCaseImp(GetCarsByColorRepositoryImp());

    var result = useCase('red');

    expect(result.amountOfDoors, 4);
  });
  test('should return a car with two doors when its color is NOT red', () {
    GetCarByColorUseCase useCase =
        GetCarByColorUseCaseImp(GetCarsByColorRepositoryImp());

    var result = useCase('yellow');

    expect(result.amountOfDoors, 2);
  });
}
