import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:dartz/dartz.dart';

class SaveFavoriteCarRepositoryImpl implements SaveFavoriteCarRepository {
  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    try {
      return Right(carEntity.price > 0);
    } catch (e) {
      return Left(Exception('saveFavoriteCar repository error'));
    }
  }
}
