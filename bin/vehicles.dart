import 'dart:io';

class Vehicles {}

class Cars {
  //  att as color of car, company name, year of manufacture production price , sell price
  //  engene type , passenger capacity, fuel type, number of seats
  String color;
  String companyName;
  int yearOfManufacture;
  double? sellPrice;
  String engineType;
  int passengerCapacity;
  String fuelType;
  int numberOfSeats;
  int _productionPrice; // protected variable
  String __owner; //privet variable

  Cars(
      this.color,
      this.companyName,
      this.yearOfManufacture,
      this.engineType,
      this.passengerCapacity,
      this.fuelType,
      this.numberOfSeats,
      this._productionPrice,
      this.__owner) {
    sellPrice = (.2 * _productionPrice) + _productionPrice;
  }

  //  getter and setter for production price
  //  getter get for prtucted value
  //  setter set for prtucted value
  void get getProductionPrice {
    print('production price is : $_productionPrice');
  }

  void set setProductionPrice(int value) {
    _productionPrice = value;
    sellPrice = (.2 * _productionPrice) + _productionPrice;
    print('production price is : $_productionPrice');
  }
}

void main() {
  Cars car1 = Cars('red', 'Toyota', 2010, 'pet', 4, 'petrol', 4, 8000, 'ahamd');
  Cars car2 = Cars('blue', 'Honda', 2010, 'pet', 4, 'petrol', 4, 8000, 'ali');

  car1.getProductionPrice;
  print(car1._productionPrice);
  car1.setProductionPrice = 10000;
  print(car1.sellPrice);
}
