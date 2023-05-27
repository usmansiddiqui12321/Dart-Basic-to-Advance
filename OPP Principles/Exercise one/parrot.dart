import 'Bird.dart';

class parrot extends bird {
  parrot({required super.id});
  @override
  addCost(double amount) {
    // TODO: implement addCost
    return super.addCost(amount * 1.01);
  }
}
