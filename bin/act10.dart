// Week 10 OOP Activity
// I used the Car class in my Week 9 activity, so I chose Animal
// as the base class for this activity.

//Base class
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
}

// Derived classes: Lion, Elephant, and Eagle
// Give a lion its own sound.
class Lion extends Animal {
  // Save the lion's name in Animal.
  Lion(String name) : super(name);

  //Overridden method
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

//Mixin
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

// Try the animals' introductions, sounds, and flying behavior.
void main() {
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

  print('\n========================================');
  print('            PROGRAM COMPLETE            ');
  print('========================================');
}
