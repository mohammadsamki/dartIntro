import 'dart:io';


class Vehicles{

}
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
  int _productionPrice;

  Cars(this.color,this.companyName,this.yearOfManufacture,this.engineType,this.passengerCapacity,this.fuelType,this.numberOfSeats,this._productionPrice){
    sellPrice = (.2*_productionPrice)+_productionPrice;
  }

  //  getter and setter for production price 
  //  getter get for prtucted value
  //  setter set for prtucted value
  void getProductionPrice(){
    print('production price is : $_productionPrice');
  }
  
}
void main (){



}