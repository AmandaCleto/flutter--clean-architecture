import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture_example/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usacase.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUseCaseImp(this._saveFavoriteCarRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    //need to save somewhere, so I call the repository that can be a firebase, a storage...
    return await _saveFavoriteCarRepository(carEntity);
  }
}
