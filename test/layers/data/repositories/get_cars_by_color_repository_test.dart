import 'package:clean_architecture_example/layers/data/dtos/car_dto.dart';
import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  CarEntity call(String color) {
    //called API and it returned a json
    var json = {
      'licensePlate': 'ABC123',
      'amountOfDoors': 4,
      'price': 40000.00,
    };

    return CarDto.fromJson(json);
  }
}

void main() {
  GetCarByColorRepository repository = GetCarByColorRepositoryImp();

  test('should return a car independently of the color', () {
    var result = repository('any');

    expect(result, isNotNull);
  });
}
