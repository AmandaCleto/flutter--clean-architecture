import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/save_favorite_car_repository.dart';

class SaveFavoriteCarRepositoryImpl implements SaveFavoriteCarRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.price > 0;
  }
}
