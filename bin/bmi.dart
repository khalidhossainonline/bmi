
class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get name => _name;
  int get age => _age;

 String getinfo(){
   return 'Name: $_name, Age: $_age' ;
 }
}

class Driver extends Person{
  String _vehicle;

  Driver (String name, int age, this._vehicle): super(name, age);

  @override
  String getinfo(){
    return 'Name: $name, \nAge: $age, \nVehicale: $_vehicle';
  }
}

abstract class Ride {

  double calculateFare(double distance);
}

// Step 2: BikeRide Class
class BikeRide extends Ride {

  double farePerKm = 20.0;

  // Abstract method এর implementation
  @override
  double calculateFare(double distance) {

    double totalFare = distance * farePerKm;


    return totalFare;
  }
}


void printFare(Ride ride, double distance) {

  double fare = ride.calculateFare(distance);
  print("="*25 + "\n");
  print("Total Distance: ${distance} km");
  print("Total Fare: ${fare.toStringAsFixed(2)} tk");

}


void main(){

  var driver = Driver('Khalid', 30 ,'Bike');
  print(driver.getinfo());


  BikeRide myBikeRide = BikeRide();
  printFare(myBikeRide, 15);
  printFare(myBikeRide, 10);

}





