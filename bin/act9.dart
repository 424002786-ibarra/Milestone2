// Store a car's model, speed, and mileage.
class Car {
  String model;
  int speed = 0;
  double _mileage; // Private field

  // Set the car's model and starting mileage.
  Car(this.model, this._mileage);

  // Let callers read the car's mileage.
  double get mileage => _mileage; // Getter

  // Let callers update the car's mileage.
  set mileage(double m) => _mileage = m; // Setter

  // Increase the car's speed and show the new speed.
  void accelerate(int amount) {
    speed += amount;
    print('$model speed: $speed km/h');
  }
}

// Create sample cars and try their speed and mileage features.
void main() {
  print('========================================');
  print('          CAR GARAGE SYSTEM             ');
  print('========================================\n');

  // Using a List collection with 3 cars
  List<Car> cars = [
    Car('Toyota', 10000.0),
    Car('Honda', 5000.0),
    Car('Ford', 15000.0),
  ];

  print('--- Testing Acceleration Methods ---');
  cars[0].accelerate(60);
  cars[1].accelerate(80);
  cars[2].accelerate(50);

  print('\n----------------------------------------');
  print('--- Testing Private Field & Encapsulation ---');
  cars[0].mileage = 10150.0;
  print('${cars[0].model} updated mileage: ${cars[0].mileage} km');

  print('\n========================================');
  print('            PROGRAM COMPLETE            ');
  print('========================================');
}
