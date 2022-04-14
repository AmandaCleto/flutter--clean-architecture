class CarEntity {
  String licensePlate;
  int amountOfDoors;
  double price;

  CarEntity({
    required this.licensePlate,
    required this.amountOfDoors,
    required this.price,
  });

  //business rule
  //the car's price is calculated based on the amount of its doors
  double get finalPrice => amountOfDoors * price;

  setDiscountForExpensiveCars() {
    if (price >= 30000.00) {
      price -= 5000.00;
    }
  }
}
