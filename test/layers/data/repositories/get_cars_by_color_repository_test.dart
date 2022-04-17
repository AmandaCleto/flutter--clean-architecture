import 'package:clean_architecture_example/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture_example/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture_example/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture_example/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarByColorDataSource dataSource = GetCarByColorLocalDataSourceImp();
  GetCarByColorRepository repository = GetCarByColorRepositoryImp(dataSource);

  test('should return a car independently of the color', () {
    var result = repository('any');

    expect(result, isNotNull);
  });
}
