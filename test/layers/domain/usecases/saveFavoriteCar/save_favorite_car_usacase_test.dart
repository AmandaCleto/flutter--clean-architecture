import 'package:clean_architecture_example/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usacase.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should save the car successfully', () async {
    SaveFavoriteCarUseCase useCase = SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImpl(),
    );

    CarEntity car = CarEntity(
      licensePlate: 'GDS9313',
      amountOfDoors: 3,
      price: 10000,
    );

    var result = await useCase(car);

    expect(result, true);
  });
  test('should save the car unsuccessfully', () async {
    SaveFavoriteCarUseCase useCase = SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImpl(),
    );

    CarEntity car = CarEntity(
      licensePlate: 'GDS9313',
      amountOfDoors: 3,
      price: 0,
    );

    var result = await useCase(car);

    expect(result, false);
  });
}
