import 'package:clean_architecture_example/layers/data/datasources/get_car_by_color_datasource.dart';
import 'package:clean_architecture_example/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture_example/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture_example/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_architecture_example/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'package:clean_architecture_example/layers/domain/repositories/save_favorite_car_repository.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase_imp.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usacase.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usecase_imp.dart';
import 'package:clean_architecture_example/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //order to follow: datasources -> repositories -> usecases -> controller

    //singlentons: will have one instance only.
    //lazy: will instantiate the instance at the first call
    //datasources
    getIt.registerLazySingleton<GetCarByColorDataSource>(
      () => GetCarByColorLocalDataSourceImp(),
    );
    //repositories
    getIt.registerLazySingleton<GetCarByColorRepository>(
      () => GetCarByColorRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SaveFavoriteCarRepository>(
      () => SaveFavoriteCarRepositoryImpl(),
    );
    //usecases
    getIt.registerLazySingleton<GetCarByColorUseCase>(
      () => GetCarByColorUseCaseImp(getIt()),
    );
    getIt.registerLazySingleton<SaveFavoriteCarUseCase>(
      () => SaveFavoriteCarUseCaseImp(getIt()),
    );

    //factory: every time I call this controller it will create a new instance
    //controller
    getIt.registerFactory(() => CarController(getIt(), getIt()));
  }
}
