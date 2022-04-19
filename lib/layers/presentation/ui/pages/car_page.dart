import 'package:clean_architecture_example/layers/data/datasources/local/get_car_by_color_local_datasource_imp.dart';
import 'package:clean_architecture_example/layers/data/repositories/get_car_by_color_repository_imp.dart';
import 'package:clean_architecture_example/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:clean_architecture_example/layers/domain/usecases/getCarByColor/get_car_by_color_usecase_imp.dart';
import 'package:clean_architecture_example/layers/domain/usecases/saveFavoriteCar/save_favorite_car_usecase_imp.dart';
import 'package:clean_architecture_example/layers/presentation/controllers/car_controller.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  CarController controller = CarController(
    GetCarByColorUseCaseImp(
      GetCarByColorRepositoryImp(
        GetCarByColorLocalDataSourceImp(),
      ),
    ),
    SaveFavoriteCarUseCaseImp(
      SaveFavoriteCarRepositoryImpl(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(controller.car.licensePlate),
      ),
    );
  }
}
