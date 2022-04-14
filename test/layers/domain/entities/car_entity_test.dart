import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should car entity NOT be null', () {
    CarEntity carEntity = CarEntity(
      licensePlate: 'DDO2020',
      amountOfDoors: 2,
      price: 20000.00,
    );

    expect(carEntity, isNotNull);
  });
  test('should car amount of doors be 3', () {
    CarEntity carEntity = CarEntity(
      licensePlate: 'DKS5230',
      amountOfDoors: 3,
      price: 20000.00,
    );

    expect(carEntity.amountOfDoors, 3);
  });
  test('should final price be 120000.00', () {
    CarEntity carEntity = CarEntity(
      licensePlate: 'ABC1234',
      amountOfDoors: 3,
      price: 40000.00,
    );

    var finalPriceResult = 120000;
    expect(carEntity.finalPrice, finalPriceResult);
  });
  test('should final price be 0.00', () {
    CarEntity carEntity = CarEntity(
      licensePlate: 'ABC1234',
      amountOfDoors: 0,
      price: 40000.00,
    );

    var finalPriceResult = 0.00;
    expect(carEntity.finalPrice, finalPriceResult);
  });
  test('should final price be 25000.00', () {
    CarEntity carEntity = CarEntity(
      licensePlate: 'ABC1234',
      amountOfDoors: 3,
      price: 30000.00,
    );

    carEntity.setDiscountForExpensiveCars();

    var finalPriceResult = 75000.00;
    expect(carEntity.finalPrice, finalPriceResult);
  });
}
