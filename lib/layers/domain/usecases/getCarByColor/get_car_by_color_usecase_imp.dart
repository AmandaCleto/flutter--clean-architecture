import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase.dart';

class GetCarByColorUseCaseImp implements GetCarByColorUseCase {
  final GetCarByColorRepository _getCarByColorRepository;

  GetCarByColorUseCaseImp(this._getCarByColorRepository);

  @override
  CarEntity call(String color) {
    return _getCarByColorRepository(color);
  }
}
