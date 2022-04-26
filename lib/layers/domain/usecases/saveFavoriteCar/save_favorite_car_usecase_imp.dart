import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usacase.dart';
import 'package:dartz/dartz.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  //Dependency Inversion Principle
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;
  SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  @override
  Future<Either<Exception, bool>> call(CarEntity carEntity) async {
    carEntity.setDiscountForExpensiveCars();

    //need to save somewhere, so I call the repository that can be a firebase, a storage... and I pass the car in it.
    return await _saveFavoriteCarRepository(carEntity);
  }
}
