import 'cow.dart';
import 'parrot.dart';

void main(List<String> args) {
  parrot mypoly = parrot(id: "Bird-123");
  mypoly.age = 0.5;
  mypoly.addCost(1000);
  mypoly.isTalkingBird = false;
  mypoly.getDetails();
    cow mymoo = cow(id: "Cattle-123");
  mymoo.age = 2.2;
  mymoo.isMilking=true;
  mymoo.addCost(500000);
  mymoo.getDetails();
}