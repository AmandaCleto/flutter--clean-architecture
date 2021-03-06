import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usacase.dart';

class CarController {
  final GetCarByColorUseCase _getCarByColorUseCase;
  final SaveFavoriteCarUseCase _saveFavoriteCarUseCase;

  CarController(
    this._getCarByColorUseCase,
    this._saveFavoriteCarUseCase,
  ) {
    getCarByColor('red');
  }

  late CarEntity car;

  getCarByColor(String color) {
    car = _getCarByColorUseCase.call(color);
  }

  saveFavoriteCar(CarEntity car) async {
    var result = await _saveFavoriteCarUseCase.call(car);
  }
}
