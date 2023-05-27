// Mixins are like Classes
// but we can not make constructors or instances of the Mixin in other class
//but we can extend Mixins in other Class
// example lion and falcon can eat meat
//falcon and airoplane can fly
//lion can run fast
mixin EatVeg {
  void eat() {
    print("Eating Veg - ${this.toString()}");
  }
}
mixin EatMeat {
  late int meatKcal;
  void eat() {
    print("Eating Meat - ${this.toString()}");
  }
}

class LivingThings {
  void breathe() {
    print('Breathing - ${this.toString()}');
  }
}

class Lion extends LivingThings with EatMeat {}

class Person extends LivingThings
    with
        EatMeat,
        EatVeg {} // same method k name thy tabhi last wla jo hoga wo ayga

void main(List<String> args) {
  Lion lion = Lion();
  lion.breathe();
  lion.eat();
  Person person = Person();
  person.meatKcal = 500;
  person.eat();
  person.breathe();
  print(person.meatKcal);
}
