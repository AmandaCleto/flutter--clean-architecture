import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarUseCase {
  //contract that indicates if it was saved
  Future<bool> call(CarEntity carEntity);
}
