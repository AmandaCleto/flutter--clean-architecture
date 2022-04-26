import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SaveFavoriteCarRepository {
  //contract that indicates if it was saved
  Future<Either<Exception, bool>> call(CarEntity carEntity);
}
