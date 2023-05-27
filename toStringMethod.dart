class Cattle {
  Cattle({required this.type});
  String type;
}

class Bird {
  Bird({required this.type});
  String type;

  @override
  //instance ko jab hm print bhi kren tw jo String toString(){} mn define kia hoga wo print hojyga
  String toString() {
    return "This is Bird Object and type is $type";
  }
}

void main(List<String> args) {
  Cattle mycattle = Cattle(type: "Sheep");
  print(mycattle);
  Bird mybird = Bird(type: "Parrot");
  print(mybird);
}
