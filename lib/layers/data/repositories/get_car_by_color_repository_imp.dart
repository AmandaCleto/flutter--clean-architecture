import 'package:clean_architecture_example/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/get_cars_by_color_repository.dart';

class GetCarByColorRepositoryImp implements GetCarByColorRepository {
  @override
  final GetCarByColorDataSource _getCarByColorDataSource;

  GetCarByColorRepositoryImp(this._getCarByColorDataSource);

  CarEntity call(String color) {
    //called API and it returned a json

    return _getCarByColorDataSource(color);
  }
}
