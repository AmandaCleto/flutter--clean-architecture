import 'package:clean_architecture_example/layers/presentation/controllers/car_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  CarController controller = GetIt.I.get<CarController>();

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
