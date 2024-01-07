import 'dart:io';
import 'vehicles.dart'; // pacaging classes 
void main(){
  Cars car1 = Cars ('red','Toyota',2010,'pet',4,'petrol',4,8000);
  Cars car2 = Cars ('blue','Honda',2010,'pet',4,'petrol',4,8000);

  car1.getProductionPrice();
  //  update for productionPrice // setter 
  // car1.setProductionPrice(7500);
}