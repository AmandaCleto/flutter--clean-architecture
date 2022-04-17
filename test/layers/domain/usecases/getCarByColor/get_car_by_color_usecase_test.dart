import 'package:clean_architecture_example/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture_example/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return an instance of car when I pass any color', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(
        GetCarByColorLocalDataSourceImp(),
      ),
    );

    var result = useCase('blue');

    expect(result, isInstanceOf<CarEntity>());
  });
  test('should return a car with four doors when its color is red', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(
        GetCarByColorLocalDataSourceImp(),
      ),
    );

    var result = useCase('red');

    expect(result.amountOfDoors, 4);
  });
  test('should return a car with two doors when its color is NOT red', () {
    GetCarByColorUseCase useCase = GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(
        GetCarByColorLocalDataSourceImp(),
      ),
    );

    var result = useCase('yellow');

    expect(result.amountOfDoors, 2);
  });
}
