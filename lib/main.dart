import 'package:clean_architecture_example/core/inject/inject.dart';
import 'package:clean_architecture_example/layers/presentation/ui/pages/car_page.dart';
import 'package:flutter/material.dart';

main() {
  Inject.init();

  runApp(MaterialApp(
    home: CarPage(),
  ));
}
