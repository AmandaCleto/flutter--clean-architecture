import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarUseCase {
  //contract
  Future<bool> call(CarEntity carEntity);
}
