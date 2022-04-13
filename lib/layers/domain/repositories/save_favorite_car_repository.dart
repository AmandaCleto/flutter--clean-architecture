import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';

abstract class SaveFavoriteCarRepository {
  //contract
  Future<bool> call(CarEntity carEntity);
}
