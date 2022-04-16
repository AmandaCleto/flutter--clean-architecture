import 'package:clean_architecture_example/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  //we extend the entity

  //can be any variable name; do not need to be exactly as the API names, because we will convert it.
  String licensePlate;
  int amountOfDoors;
  double price;

  //as soon CarDto arguments are filled, it will call super (CarEntity), then it will create CarEntity passing the attributes to it.
  CarDto({
    required this.licensePlate,
    required this.amountOfDoors,
    required this.price,
  }) : super(
          licensePlate: licensePlate,
          amountOfDoors: amountOfDoors,
          price: price,
        );

  Map toJson() {
    //sent to API
    //here, the value is the API attribute and the key is our business logic, so it can be named by any name
    return {
      'licensePlate': licensePlate,
      'amountOfDoors': amountOfDoors,
      'price': price,
    };
  }

  static CarDto fromJson(Map map) {
    // receive from API
    //here, the key is our business logic, so it can be named by any name, and the value is the API attribute's name
    return CarDto(
      licensePlate: map['licensePlate'],
      amountOfDoors: map['amountOfDoors'],
      price: map['price'],
    );
  }
}
