class Car {
  String? Color;
  int wheel = 4;
  int price = 10000;
  // void printmsg(){
  //   print("Hi i am from Car Class");
  // }
  void inceaseCarPrice(int value) {
    price += value;
  }

  void printCarColor() {
    print("Car Color is ${this.Color}");
  }

  // Constructor
  Car(String colorInput) {
    //this.Color means => Color is defined in Class not in any Function
    this.Color = colorInput;
  }
}

void main(List<String> args) {
  //ik instance dusry instance my interfere nhi karta
  Car mycar = Car("Red"); // class k instance ki type class hi hogi
  Car SecondCar = Car("blue");
  print(mycar); // will print Instance Of Car
  mycar.Color = "red";
  mycar.wheel = 12;
  SecondCar.Color = "Black";
  SecondCar.wheel = 10;

  print(mycar.wheel.toString());
  print(SecondCar.wheel);

  print("my car color : " + mycar.Color.toString());
  print("Second car color : " + SecondCar.Color.toString());

  mycar.inceaseCarPrice(5000);
  print(mycar.price);
  print(SecondCar.price);
  mycar.printCarColor();
}
