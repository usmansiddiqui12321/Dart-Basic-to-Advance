import 'Animal.dart';

abstract class Cattle extends Animal {
  Cattle({required super.id});
  bool _canMilk = false;

  void set isMilking(bool value) => _canMilk = value;
  bool get isMilking => _canMilk;

  //Ik abstract class age dusri abstract class ko extend kr rhi h tw 
  //zruri nhi h k us k sary components use kry jsy 
  //getDetails() use kia or addCost nhi kia  
  @override
  getDetails() {
    print(
        "id:$id , age:$age ,CurrentCost: $currentcost , can Milk = $isMilking");
  }
}