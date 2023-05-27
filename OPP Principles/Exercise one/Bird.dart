import 'Animal.dart';

abstract class bird extends Animal {
  bird({required super.id});
  bool _cantalk = false;
  void set isTalkingBird(bool value) => _cantalk = value;
  bool get isTalkingBird => _cantalk;
  //Ik abstract class age dusri abstract class ko extend kr rhi h tw
  //zruri nhi h k us k sary components use kry jsy
  //getDetails() use kia or addCost nhi kia
  @override
  getDetails() {
    print(
        "id:$id , age:$age ,CurrentCost: $currentcost , can talk = $isTalkingBird");
  }
}
