// Base class
// Give all animals a name and shared actions.
abstract class Animal {
  String name;

  // Save the animal's name.
  Animal(this.name);

  // Each animal must make its own sound.
  void makeSound();

  // Say the animal's name.
  void introduce() {
    print('I am $name.');
  }

  // Async method
  // Wait briefly, then return information about the animal.
  Future<String> getInformation() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Information about $name is ready!';
  }
}

// Derived classes: Lion, Elephant, and Eagle
// Give a lion its own sound.
class Lion extends Animal {
  // Save the lion's name in Animal.
  Lion(String name) : super(name);

  // Make the lion's sound.
  @override
  void makeSound() {
    print('$name says Roar!');
  }
}

// Give an elephant its own sound.
class Elephant extends Animal {
  // Save the elephant's name in Animal.
  Elephant(String name) : super(name);

  // Make the elephant's sound.
  @override
  void makeSound() {
    print('$name makes a trumpet sound!');
  }
}

// Mixin
// Add flying behavior to animals that can fly.
mixin CanFly {
  // Show that the animal is flying.
  void fly() {
    print('Flying through the sky!');
  }
}

// Give an eagle animal behaviors and the ability to fly.
class Eagle extends Animal with CanFly {
  // Save the eagle's name in Animal.
  Eagle(String name) : super(name);

  // Make the eagle's sound.
  @override
  void makeSound() {
    print('$name makes a screeching sound!');
  }
}

// Try the animal behaviors and wait for Simba's information.
void main() async {
  print('========================================');
  print('          ANIMAL SYSTEM                 ');
  print('========================================\n');

  List<Animal> animals = [Lion('Simba'), Elephant('Dumbo'), Eagle('Sky')];

  print('------- Animal Introductions --------');
  for (Animal animal in animals) {
    animal.introduce();
  }

  print('\n------- Testing Polymorphism --------');
  for (Animal animal in animals) {
    animal.makeSound();
  }

  print('\n------- Testing Mixin --------');
  Eagle eagle = Eagle('Sky');
  eagle.fly();

  print('\n------- Testing Async/Await --------');
  print('Fetching information about Simba...');

  Lion lion = animals[0] as Lion;
  String result = await lion.getInformation();

  print(result);
  print('Program continues after the result.');

  print('\n========================================');
  print('            PROGRAM COMPLETE            ');
  print('========================================');
}
