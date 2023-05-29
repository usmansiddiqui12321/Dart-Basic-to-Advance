class Car {
  String? color;
  late int
      price; //late Intializer Ko Initialize karna Zruri h warna code ki rair Lag jaygi
  void inceaseCarPrice(int value) {
    price += value;
  }

  Car({this.color, required this.price}); // Name Variable

  void SetColor() {
    print("Car Color is ${this.color}");
  }
}
  void main(List<String> args) {
    Car mycar = Car(price: 10000, color: "Black");

    mycar.SetColor();
    print(mycar.price);

    mycar.inceaseCarPrice(5000);
    print(mycar.price);
  }

